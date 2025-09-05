Return-Path: <devicetree+bounces-213527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED265B45A1E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 16:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F34281897345
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D79A13629BA;
	Fri,  5 Sep 2025 14:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NuNvEwp+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DB53629AC
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 14:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757081410; cv=none; b=EEp4gWiqgb+oEmi39zPQHAluMbXRvb2qQZPAnIPkqxY/CD8M9glhxxJYpA6PeMoEYfhJpdUsiABWNWpK2diTo7yYkplr9FOOhOcrR/kwZH96f/G/ZjITvVlCf1Xxf3C3cvqhaM22pJ5/dOBfkx2VJg1h0B7G5+StMgiMsPGXcQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757081410; c=relaxed/simple;
	bh=/LEoDOxRwLH0zq+NxlcHZOmCd4reVa5NlZLpt2YsGCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HPDg+Wdl6FLmQ8eksjVOugglPlHCepIhXwH/q10MXmYcFJGg9NUdtCy8DlN9ZAivJpAjKojNvvyruPUVL6obqflkmSQQRhgtJLKjJJSAO701S3HaYZyhQsooBpJNYhYzR6CxSLAqi0y0MjbmSjZk/Wwf0/zj2OoJ9RUIfeYCY1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NuNvEwp+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58574XjQ003172
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 14:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	acLk0y8MgVXQzS1w3CddwQhvyTNJ65p29luO5znXiyo=; b=NuNvEwp++q0PT7li
	pEvLs50MLCg5BElOS9V5l2knLoadgJENm6XMu9EfOwEe0nh0nBjmC7GAAwQgB2Q4
	p/hiypg0uUTh447sF2ybr55gUBeNB+FZn0cIXM3r2A8IqoczX46n6ZEJ/yn3NOvf
	BpHlXfWzGt5RIrXhTEKG5VffBaT1x7fJHcvxxLAhFOxSeO97dzRV6ib+XVR0kA+T
	qupXDTEAm/4R9o16tQ6jaD0A7M5TH4xxHzdFyJM48iZCISeF3hx5RgHUwRBf1C0N
	tBKmN899Q87HoC8QgcBotfaJDrHXn2ZdDl+2vIeMeho0CzQI/J1egj1YtLqcmNVl
	KCu+Jg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush3b83q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 14:10:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f4e4fe41so3381991cf.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 07:10:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757081406; x=1757686206;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=acLk0y8MgVXQzS1w3CddwQhvyTNJ65p29luO5znXiyo=;
        b=XgYzr5jGOc4Nc3rGQJSoCxZr8/4PTaLTGPJnFtgNcgnOKXe4nl8XThh6wNAUj4tRT4
         jKBLmZ/VyXXUkWmDwfqjnH4ypfFJK8XiwtWjoRC8hAVdgnPX0d2dKyor6BGRsIebMteG
         hs750flz8a+ljh7vFaYfe7WQ3pj8lYrGGJErvBOZv9DQW8q6mN2JlyZU1+uhNJpU9DYX
         Jd1a+SHT+hKugEBUxs6Df0gtzH2IG5OlbXGNlIeBWh0tWJipcWD5oUzDTvULqW2HJnyK
         7MC/WQ99KRxWtBbpJiHxrk3RbG5CTEtuKX8k8NcIm5EM29ExgSkbiQiv0bPzwnhYMR06
         NTdA==
X-Forwarded-Encrypted: i=1; AJvYcCUG0vh79/QDx8A0jkgnDdPoy5LJoNHBvK4N1wZCucjinwr3sLJ83zYU+dBZhNFt1Yif0TRWsY3t2TMR@vger.kernel.org
X-Gm-Message-State: AOJu0YwyX4SyKkqcol4gNY0CZwxLNqRIlpHb78Gzz3Bsttrb+nR5+woA
	JdHVhpfgC1wIxZT/ecL7vKwJ7hNEpe4/xoxIF3pjTNx75Iwln6p1DhGgHqjzXYeiVdgKH5zZA10
	wdq/Wc+CMVFhX3pL64pTtsXlw+T9Hj/S/FVddzPQa4DGJpyjuNYmZurN8VNJGS50f
X-Gm-Gg: ASbGnctpUC3T7tctuIslJttM0j7y+CSPU4fLAhrW+4zu6PJaGNV0sEDxbDUKcvJspg4
	CEq6v7wUBi1hQqR9eCB6AoflNQLCO/hM+aSMBysl9kvSuKynWepaxjelq+sT12tIW5MU0n1rEVv
	EdauNsR7297tJzKRrVnxp4tbSfXx7JEyOBpKj8YlP96hZwBGm1IdkDVa2zxp/47qEYJMg+SLdU4
	x8VRDcwHBwYMI8HjgZUpfVyQoLtp4Nybk5E1cGG/og92KwNoQ+YzH4+3tZy2EApsh6V5tekboU3
	kgOo1Xg2u23Gfx8BW/5Q3jboIaJ0oPsJTRS5pqr6joGl9Sl7gcv1YKObJP4mW4tlABLvXT3y4SL
	iJ9knwiKCuv/Ub9oDKTON7d3CEAJ9VhBLnuX2YbTo8OzRaCBT1zT5
X-Received: by 2002:a05:622a:1e8d:b0:4b4:989a:a272 with SMTP id d75a77b69052e-4b4989aa569mr113668701cf.47.1757081405937;
        Fri, 05 Sep 2025 07:10:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOfPTOrjUqnLR4aMEH1xnlRcOTOPfE1zbMPnBX5+k5I8ggujVWCh/TSBkjhOJHzCpNhfYEfA==
X-Received: by 2002:a05:622a:1e8d:b0:4b4:989a:a272 with SMTP id d75a77b69052e-4b4989aa569mr113666471cf.47.1757081404070;
        Fri, 05 Sep 2025 07:10:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc161csm1784268e87.55.2025.09.05.07.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:10:03 -0700 (PDT)
Date: Fri, 5 Sep 2025 17:10:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?5p2o5a2Z6L+Q?= <yangsunyun1993@gmail.com>
Cc: syyang <syyang@lontium.com>, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        xmzhu@lontium.com, llzhang@lontium.com, rly@lontium.com
Subject: Re: [PATCH v1 2/2] This patch adds a new DRM bridge driver for the
 Lontium LT9611C chip.
Message-ID: <ipjzhwkvmdvoxuai3yl6mrl3jm4gahnhtnuqln473vlsz37axu@ptpef36fwcid>
References: <20250903123825.1721443-1-syyang@lontium.com>
 <20250903123825.1721443-3-syyang@lontium.com>
 <24rahlm4kkob7knapdxxnjixye3khx3nv2425y4kkirat4lmam@gjey7zqsnzks>
 <CAFQXuNZUfAJe4QEDfi+-1N99xO0_z5_Omnsn_-SXr2QPtvdL_g@mail.gmail.com>
 <7cyypk5j7o5fglmibshg45iysffpdl75m6rqvv4b5zntfevhiz@zlt7ybuzkvrg>
 <CAFQXuNb+Eq6KPFvsnmGvn7KKjn4WRtMy1x4pn4ZvZoQ-_S_fYQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFQXuNb+Eq6KPFvsnmGvn7KKjn4WRtMy1x4pn4ZvZoQ-_S_fYQ@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX8R0NgF5ezjCC
 ++ffigv+Q/aE5/1jvROPDbwzX2wkC2USh0eJBgpIFUmfdRhyusTfc6hKY86MVNWYfTP7FDE/1Vo
 d9qlF73NS81iEMc/dOd6CzzQJZoAjMsILij+8mV7JhUTd4Ksz9zj+grchLvsvxHIuvuGo3KNXjm
 VN1eyXBty1VXI37QUp5u+X94XnVVyDomiYoNUafIBj6Cy5PoyRP47ablFsXuDt50pcGcnx/cYf4
 TnxRMm8lcTmb19ITckiZfrSB6OHXuRUQyQ+IHrg+rVCenT4kiWC40mkH3jiXmAGMR0UTZVySbPr
 A8UufOMBMRJvHBQj3xG8y5L9SNR+L2tUQNGshIUjomlsOum8Boq6V7Fh9i+vx4DbfVSd0XQb8Ff
 1UKUhQCj
X-Proofpoint-ORIG-GUID: 5YBySUNf1y86M-UV--F5IL5hk_j3kM-_
X-Proofpoint-GUID: 5YBySUNf1y86M-UV--F5IL5hk_j3kM-_
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68baef3f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Fy06R7qyhczz9_k_:21 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=Kz8-B0t5AAAA:8 a=ruwdpqL4po3ky7NklPMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On Fri, Sep 05, 2025 at 10:55:51AM +0800, 杨孙运 wrote:
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年9月4日周四 22:39写道：
> 
> >
> > On Thu, Sep 04, 2025 at 06:48:13PM +0800, 杨孙运 wrote:
> > > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年9月4日周四 10:52写道：
> > > >
> > > > On Wed, Sep 03, 2025 at 05:38:25AM -0700, syyang wrote:
> > > > > The following changes are included:
> > > > >
> > > > > - Updated Kconfig and Makefile to include the new driver
> > > > > - Implementation of the bridge driver at
> > > > >   drivers/gpu/drm/bridge/lontium-lt9611c.c
> > > >
> > > > This is really not interesting, it can be seen from the patch itself.
> > > > Please read Documentation/process/submitting-patches.rst.
> > > >
> > > Sorry,  I will study submitting-patches.rst.
> > >
> > > > Is it possible to toggle infoframes?
> > >
> > > sorry, I don't understand the meaning of this sentence. Please explain
> > > it in detail.
> >
> > Is it possible to control InfoFrames being sent over the HDMI cable?
> > Both contents and enabling/disabling.
> >
> Can be controlled via I2C

Then please implement DRM_BRIDGE_OP_HDMI and corresponding InfoFrame
callbacks.

> > >
> > > > > +
> > > > > +#define FW_SIZE (64 * 1024)
> > > > > +#define LT_PAGE_SIZE 256
> > > > > +#define FW_FILE  "LT9611C.bin"
> > > >
> > > > Please land this firmware to the linux-firmware repository.
> > > >
> > >
> > > The LT9611C has built-in firmware, and when the chip is running, it
> > > uses the internal firmware.
> > > The firmware needs to be updated only when the customer encounters
> > > issues during the debugging phase due to changes in hardware design or
> > > parameters.
> > > When the customer needs to update the firmware, they will apply to our
> > > company for a customized firmware.
> > > They will place this firmware under /lib/firmware, and then reboot the
> > > platform. After that, the driver will update the firmware.
> > > So I think there is no need to upload the firmware.
> >
> > Then please make firmware updates opt-in, requiring some user action.
> > I'd suggest first getting the simplfified version of the driver in
> > (without fw update capabilities) and then adding FW upgrades in as a
> > separate patch.
> >
> I will research it.

Research... what?

> > > > > +static unsigned int get_crc(struct crc_info type, const u8 *buf, u64 buf_len)
> > > >
> > > > Use library functions for that.
> > > >
> > >
> > > I'm not sure whether the algorithms in the llibrary functions are
> > > consistent with those designed in our chip.
> > > If either of them changes, it will cause the firmware updated to the
> > > chip to fail to run.
> >
> > CRC polynoms don't change that easily
> >
> > > I think it's safer to implement it using our own code.
> >
> > No, it's not.
> >
> If we calculate CRC_1 using the library function and then burn it
> together with the firmware into the chip, when the chip boot, it will
> use the internal hardware to calculate the firmware CRC_2.
> If CRC_1 is not equal to CRC_2, the chip will fail to boot. The
> library function will not be changed. I'm worried that the algorithm
> in our chip's hardware is different from the library function. I'll
> research it.

Please take a look first, before having fears or implenting yet another
CRC function.

> 
> > > I'll check it.
> > > > > +static int lt9611c_prepare_firmware_data(struct lt9611c *lt9611c)
> > > > > +{
> > > > > +     struct device *dev = lt9611c->dev;
> > > > > +     int ret;
> > > > > +
> > > > > +     /* ensure filesystem ready */
> > > > > +     msleep(3000);
> > > >
> > > > No. If the firmware is necessary and it's not ready, return
> > > > -EPROBE_DEFER.
> > > >
> > > The firmware is unnecessary . This part of the code is for customers
> > > who need to upgrade the chip firmware.
> > >
> > > Due to the different designs of the platform, the firmware used by
> > > each customer may be different.
> >
> > Well... That's a very bad way to go. We have had this issue with
> > LT9611UXC at one of my previous jobs. Our customers have had various
> > kinds of issues because of the wrong firmware.
> >
> > Please provide some reference, which works in a DSI-to-HDMI case and
> > make it _tunable_ rather than requiring to replace the firmware
> > completely.
> >
> i will research it.
> Yes, you worked together with my colleagues to handle the issue of
> LT9611UXC. (At that time, you used dmitry.baryshkov@linaro.org)
> 
> > >
> > > Therefore, when they need to update the firmware, they only need to
> > > compile the firmware into the /lib/firmware directory during the
> > > compilation
> > > process, and then burn the image into the platform.
> > >
> > > Once reboot platform, the firmware upgrade can be automatically completed.
> >
> > The firmware upgrade must be triggered by user, unless the FW is
> > completely empty.
> >
> Is it necessary for the authorities to insist on doing so?

I think so. The rootfs might be the same for different devices,
different use cases, etc. So your 'load and program firmware if it's
present in rootfs' doesn't work in a general case.

> > > > > +static const struct drm_edid *lt9611c_bridge_edid_read(struct drm_bridge *bridge,
> > > > > +                                                    struct drm_connector *connector)
> > > > > +{
> > > > > +     struct lt9611c *lt9611c = bridge_to_lt9611c(bridge);
> > > > > +
> > > > > +     usleep_range(10000, 20000);
> > > >
> > > > Why?
> > > >
> > > Delay for a while to ensure that EDID is ready.
> >
> > Your other chip had interrupt status to note that EDID is ready. I hope
> > you have that one too. Blindly calling usleep_range() is a bad idea.
> >
> Different chips have different logic. i will research it.

Thanks.

> > > > > +static int lt9611c_hdmi_hw_params(struct device *dev, void *data,
> > > > > +                               struct hdmi_codec_daifmt *fmt,
> > > > > +                              struct hdmi_codec_params *hparms)
> > > > > +{
> > > > > +     struct lt9611c *lt9611c = dev_get_drvdata(dev);
> > > > > +
> > > > > +      dev_info(lt9611c->dev, "SOC sample_rate: %d, sample_width: %d, fmt: %d\n",
> > > > > +               hparms->sample_rate, hparms->sample_width, fmt->fmt);
> > > > > +
> > > > > +     switch (hparms->sample_rate) {
> > > > > +     case 32000:
> > > > > +     case 44100:
> > > > > +     case 48000:
> > > > > +     case 88200:
> > > > > +     case 96000:
> > > > > +     case 176400:
> > > > > +     case 192000:
> > > > > +             break;
> > > > > +     default:
> > > > > +             return -EINVAL;
> > > > > +     }
> > > > > +
> > > > > +     switch (hparms->sample_width) {
> > > > > +     case 16:
> > > > > +     case 18:
> > > > > +     case 20:
> > > > > +     case 24:
> > > > > +             break;
> > > > > +     default:
> > > > > +             return -EINVAL;
> > > > > +     }
> > > > > +
> > > > > +     switch (fmt->fmt) {
> > > > > +     case HDMI_I2S:
> > > > > +     case HDMI_SPDIF:
> > > > > +             break;
> > > > > +     default:
> > > > > +             return -EINVAL;
> > > > > +     }
> > > >
> > > > Does that add anything on top of the limitations of hdmi-codec.c?
> > > >
> > > The parameters supported in the hdmi-codec.c may not be supported by
> > > my chip. Therefore, we can exclude the parameters that are not
> > > supported by the chip.
> >
> > Are they?
> >
> The firmware handles all parameter adaptation autonomously. This code
> merely needs to expose the chip's capabilities to hdmi-codec.c.

Which params are supported by hdmi-codec but not suppored by your chip?

> 
> > >
> > > > > +
> > > > > +     return 0;
> > > > > +}
> > > > > +
> > > > > +static void lt9611c_audio_shutdown(struct device *dev, void *data)
> > > > > +{
> > > > > +}
> > > > > +
> > > > > +static int lt9611c_audio_startup(struct device *dev, void *data)
> > > > > +{
> > > > > +     return 0;
> > > > > +}
> > > > > +
> > > > > +static void lt9611c_audio_update_connector_status(struct lt9611c *lt9611c)
> > > > > +{
> > > > > +     enum drm_connector_status status;
> > > > > +
> > > > > +     status = lt9611c->audio_status;
> > > > > +     if (lt9611c->plugged_cb && lt9611c->codec_dev)
> > > > > +             lt9611c->plugged_cb(lt9611c->codec_dev,
> > > > > +                              status == connector_status_connected);
> > > > > +}
> > > > > +
> > > > > +static int lt9611c_hdmi_audio_hook_plugged_cb(struct device *dev,
> > > > > +                                           void *data,
> > > > > +                                      hdmi_codec_plugged_cb fn,
> > > > > +                                      struct device *codec_dev)
> > > > > +{
> > > > > +     struct lt9611c *lt9611c = data;
> > > > > +
> > > > > +     lt9611c->plugged_cb = fn;
> > > > > +     lt9611c->codec_dev = codec_dev;
> > > > > +     lt9611c_audio_update_connector_status(lt9611c);
> > > > > +
> > > > > +     return 0;
> > > > > +}
> > > > > +
> > > > > +static const struct hdmi_codec_ops lt9611c_codec_ops = {
> > > > > +     .hw_params      = lt9611c_hdmi_hw_params,
> > > > > +     .audio_shutdown = lt9611c_audio_shutdown,
> > > > > +     .audio_startup = lt9611c_audio_startup,
> > > > > +     .hook_plugged_cb = lt9611c_hdmi_audio_hook_plugged_cb,
> > > > > +};
> > > >
> > > > No, we have HDMI audio helpers for that. Drop this and use the helpers
> > > > instead.
> > > >
> > > ？？？ I don't understand.
> >
> > See <drm/display/drm_hdmi_audio_helper.h> and
> > https://lore.kernel.org/dri-devel/20250803-lt9611uxc-hdmi-v1-2-cb9ce1793acf@oss.qualcomm.com/
> >
> i will research, thks.
> Could you please share the latest driver file for lt9611uxc.c that you
> have written? (to this email: syyang@lontium.com)

No, I will not. It's called upstream, because everything is either in
the tree or on the mailing list.

> > > > > +     if (lt9611c->audio_pdev)
> > > > > +             lt9611c_audio_exit(lt9611c);
> > > > > +
> > > > > +     if (lt9611c->fw) {
> > > >
> > > > You definitely don't need firmware when the bridge is up and running.
> > > >
> > > The previous text has already described the working logic of the firmware.
> >
> > It's another topic: you are storing the firmware in memory while the
> > driver is bound. It's not necessary. You can release it after updating
> > it on the chip.
> >
> I understand what you mean.

No, you don't. The driver can call release_firmware() after flashing the
chip. That's it at this point. Nothing more.

> Based on the above conversation, your intention is that when the
> customer needs to upgrade the firmware, they should modify the
> comparison conditions of the version, then compile and burn the
> kernel, and then perform the firmware upgrade, just like the LT9611UXC
> driver. Instead of loading the firmware every time.

Of course not. I've asked to add a way for the user to trigger firmware
update. It might be a sysfs file (like I did for lt9611uxc), it can be
modparam or anything else. But again, this is not relevant _here_.

I simply ask you to release the memory after it is no longer needed.


> My design intention is to avoid the need for recompiling the driver
> when upgrading. Instead, a file named "LT9611C.bin" can be directly
> sent to the "/lib/firmware" directory via scp. Then you can either
> perform a reboot for the upgrade or execute the command manually for
> the upgrade.

Rootfs might be read-only, it might be shared via NFS, it might be
coming from the cloud via Docker container, etc.

> Perhaps you are suggesting that we could follow the design approach of
> the LT9611UXC driver?
> 
> > > > > +
> > > > > +     lt9611c->kthread = kthread_run(lt9611c_main, lt9611c, "lt9611c");
> > > >
> > > > Why do you need extra kthread for that???
> 
> Upgrading the firmware takes time. execute it sequentially in the
> probe function, it will block the system boot.
> Using the kthread method will not block the system boot.

Using async probing. Or program firmware after checking all resources
that are required for the device.

Also, as you've written, firmware flashing is an exception, so delaying
one exceptional boot is not a real issue.

And anyway, this requires a comment in the source file and a comment in
the commit message.


-- 
With best wishes
Dmitry

