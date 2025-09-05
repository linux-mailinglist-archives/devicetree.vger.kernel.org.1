Return-Path: <devicetree+bounces-213531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B7AB45A55
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 16:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D08841BC1B39
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAD5436CE10;
	Fri,  5 Sep 2025 14:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kWWxJuDV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE7D36CDF8
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 14:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757082249; cv=none; b=QrXMoBcobr3pBlbaj8o5JQXfT6xxlw4idFBdy/5xG23cAHsE8t/MaLCPL4n830ZfYSmVS23rWwISGhL2QPHuEGNpCmN2Qb/y9voU0ktAjE9cv49EhCp6zxttwLUEi2j8VcxTFMommfhRYKfOku9+Ibp4r99CNMwL5H2hEzRaUKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757082249; c=relaxed/simple;
	bh=v1BrOmeKj4EWBjr+uMjb8gRXTR9GRVTFdrHpQeJiM+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qnPcFh4tflX13cB2A2QzIYl5vxHpog23Zc+IBgF2nTL+SoS8Fxo6uLJgAe7n651hx4TYubeigcfvb0Mv+vH0frMoB4/d9L5btexX8GBP1muoxgR4HoO6sCJxwEz7OGJJRrF+JboEOHHMTprIbvccaxCZa+LPyfDRyb4Q2wcoEsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kWWxJuDV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5856j50W008129
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 14:24:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P8CK3j/4WxgAGywvnK0+ToZKOtcT0pRGSM24SOakQ34=; b=kWWxJuDVBYtSG29w
	R3JTrrtt0P8NwxeIOPQ0xoigcPXjbK7DGlIoH8++4TLxyPYG75CoKOPXrWHxJQFX
	WXh1NuAsdWQlBv53jzfXgwb7cHVHkNPYKBCsLl4jwE+fOvbEfzvg6rnWbxpV0L9E
	DPOjTgmWnfJywbtslerUy8EDTrjsIlw7HRJPKC1tPjL5gCe35eaBXAu9zOdn6MDA
	uZw9cs/dT28WCYpqj8KJ1a6pP9zgB1y8pcC6+UR6PnmAbiR3y4ZMx1vxI4Rkm0QF
	06qQek9SlGyCJRE/1OpdvsuSj7P6jfSx5LvkZxCWXVTo0tT/Tp9jr0YFyG2mQK8O
	GtX4Kg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjubm3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 14:24:06 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-720408622c3so37274186d6.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 07:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082246; x=1757687046;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P8CK3j/4WxgAGywvnK0+ToZKOtcT0pRGSM24SOakQ34=;
        b=Bvj6cCwv0SWDZHp9MDj7FKOqp1rKbqn/87pbGXUzALBzd8RpsXX4bCK26uDBwD7fFv
         S/dGv87+5zfeKAXL/3WWej3eJrPzuiThOz16UDN2bK5kLdgciBxiMY3qjGy4B8xOmsg3
         5CMH0QjbuCNjFpOpusFeh1FNZkszmM303S0q2xo3V87vMpJv9ucN8IW022j3rFSl1Pji
         /BUbn1iXXZqWUcFzJa1u5o42hvGLKSNYfrge0an4sIa6UK9Sf06eDYox1fn/HiTlyark
         dUbnXaG7CZsyGCewrDNRuV2lYqgRywDHrSVPiR7ROyh1DjBpUo/KEpIwDBLFcODk+DZB
         sJVg==
X-Forwarded-Encrypted: i=1; AJvYcCX/MBG42NIGy5g2mXRKxmB2z3FV9gCRoFA9a2v29pbWOa0yCWKBCiW/lfQtHwyU06dVhVRn3FGbAYZF@vger.kernel.org
X-Gm-Message-State: AOJu0YyxGgIwTUKbKIlHE1ti4sALOQWdtUmjmCmNqvsoKpRX5dpC++yW
	GxiaT5tsxDaIMLnOiLD0LN3OR+OzWQySDy+xWD92nNv2hQ9W5/t0G664tDZKmj369g4iLpviPpl
	PtpUXS3HQg9VGiW4NW+KMW1gW4KmBqomqimsVIs47wguoxSuwe3UmknN51YaokfA2
X-Gm-Gg: ASbGncs1ETQ0ceC2I2l2OkOa3WzS1h+tjjqDTIdCOlbUUmMPEOSkH2s/bvijX2oYdZj
	oWK1rYmUcLA+YuPJOXDuAo1a5soa1iDKwvAXM4kTZ4zoiosgEpwiaCOk5uXy7Xj9R5ByF2ArD3x
	sUituqEzUp4OqXd9ll94JY7WYaBfDaDbr//M/pVNKA09zLSf46V7KUl7MwPHVZeHcCdGASFcwZi
	nj2EvHPy5Ut70ebPc2S7aGddjFeJ4J4MIM0Sm1qF+2yBr3BqrWrla+T5DXkY/j3xXPcXpL9bUJM
	sTWGxDRFZwJXrsYtjImlV9peu0VdA0YFUKUvghC7EmBZ1ZaEifowGwU/72aQT8aCSspILnVpKwI
	F/alarzAM+s5gKE72iIYk544z4x7lEx7dPEmJvXMAS8ut8stq9+qJ
X-Received: by 2002:a05:6214:33c8:b0:722:71e:5fd0 with SMTP id 6a1803df08f44-722071e61d9mr133600186d6.65.1757082245756;
        Fri, 05 Sep 2025 07:24:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYek2WhrQzhwmnmonrzpvex4d7XtlvsXYxYDraDx6Q7z/RMyKZIkbMrAXU7yS8Knk38q+2HQ==
X-Received: by 2002:a05:6214:33c8:b0:722:71e:5fd0 with SMTP id 6a1803df08f44-722071e61d9mr133599366d6.65.1757082244894;
        Fri, 05 Sep 2025 07:24:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad4ce26sm1803707e87.141.2025.09.05.07.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:24:03 -0700 (PDT)
Date: Fri, 5 Sep 2025 17:24:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?5p2o5a2Z6L+Q?= <yangsunyun1993@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, syyang <syyang@lontium.com>,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andrzej.hajda@intel.com, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        xmzhu@lontium.com, llzhang@lontium.com, rlyu@lontium.com,
        xbpeng@lontium.com
Subject: Re: [PATCH v1 2/2] This patch adds a new DRM bridge driver for the
 Lontium LT9611C chip.
Message-ID: <zv7twvfxlira5wmg4zwk6kgkldgdiesgqzjky4733lp2us2hmx@tohls6czl3wz>
References: <20250903123825.1721443-1-syyang@lontium.com>
 <20250903123825.1721443-3-syyang@lontium.com>
 <24rahlm4kkob7knapdxxnjixye3khx3nv2425y4kkirat4lmam@gjey7zqsnzks>
 <CAFQXuNZUfAJe4QEDfi+-1N99xO0_z5_Omnsn_-SXr2QPtvdL_g@mail.gmail.com>
 <7cyypk5j7o5fglmibshg45iysffpdl75m6rqvv4b5zntfevhiz@zlt7ybuzkvrg>
 <CAFQXuNb+Eq6KPFvsnmGvn7KKjn4WRtMy1x4pn4ZvZoQ-_S_fYQ@mail.gmail.com>
 <d3e3b838-26fa-491e-8c4f-63a1693f2391@linaro.org>
 <CAFQXuNbZfnySYmizY2=PJGLkk38WHOYbVcbPTRZvgY7bFdK8yg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFQXuNbZfnySYmizY2=PJGLkk38WHOYbVcbPTRZvgY7bFdK8yg@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68baf286 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=Fy06R7qyhczz9_k_:21 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qmKdPLsT23yXcm_7bjkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6dJ-6w3O5HOwu9ALz9nXZoxncUuVkwRv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX8FUKej2bYraF
 mhRxc0YqI/rTZWIljfLp1KdTUa/N109Eh4+bzdcM2LXtpMDk0y0u78K/mMY1zsOMz4wAr7Prchl
 ZqnTipfT7G10IKk7FrDAUwEF1AcwtiGKsY72fdpGhFRvhme6jJz+1q8fVf1mpRxOnc4KfTMqrXs
 Wb2ELuXVP7dZ85FoQfb5wXzxcr56kKnWTaU529mjm8WNCTbY72J9jEaQ/KaojTUQFbtIH2tapHR
 hcyg+jVgrL7hwq4KqXSCUmCjLXSEBBvBRu6VmmbVeWwsxlxbxs6jp/o+jjvJ18YVT04WcCOmjjW
 HjD0Bx+K2HaXP2Zu786Hmu8zelWJp+rt9NrYgDMrFT/iv6x4/PGrfOrOcZT3t9hq0i17j0Lz3b0
 voVo8vJ/
X-Proofpoint-ORIG-GUID: 6dJ-6w3O5HOwu9ALz9nXZoxncUuVkwRv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Fri, Sep 05, 2025 at 04:58:59PM +0800, 杨孙运 wrote:
> HI，
> 
> As a vendors , we have begun to attempt to contribute to the Linux,
> and we are very willing to do so.
> there are still many rules that we don't understand and need to learn.

Not top-posting and trimming your emails would be nice things to learn
too.

> <neil.armstrong@linaro.org> 于2025年9月5日周五 16:10写道：
> > On 05/09/2025 04:55, 杨孙运 wrote:
> > > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年9月4日周四 22:39写道：
> > >> On Thu, Sep 04, 2025 at 06:48:13PM +0800, 杨孙运 wrote:
> > >>> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年9月4日周四 10:52写道：
> > >>>> On Wed, Sep 03, 2025 at 05:38:25AM -0700, syyang wrote:

> > >>>>> +     }
> > >>>>> +
> > >>>>> +     if (lt9611c->bridge_added) {
> > >>>>> +             drm_bridge_remove(&lt9611c->bridge);
> > >>>>> +             lt9611c->bridge_added = false;
> > >>>>> +             dev_err(dev, "DRM bridge removed\n");
> > >>>>> +     }
> > >>>>> +
> > >>>>> +     if (lt9611c->regulators_enabled) {
> > >>>>> +             regulator_bulk_disable(ARRAY_SIZE(lt9611c->supplies), lt9611c->supplies);
> > >>>>> +             lt9611c->regulators_enabled = false;
> > >>>>> +             dev_err(dev, "regulators disabled\n");
> > >>>>> +     }
> > >>>>> +
> > >>>>> +     if (lt9611c->audio_pdev)
> > >>>>> +             lt9611c_audio_exit(lt9611c);
> > >>>>> +
> > >>>>> +     if (lt9611c->fw) {
> > >>>>
> > >>>> You definitely don't need firmware when the bridge is up and running.
> > >>>>
> > >>> The previous text has already described the working logic of the firmware.
> > >>
> > >> It's another topic: you are storing the firmware in memory while the
> > >> driver is bound. It's not necessary. You can release it after updating
> > >> it on the chip.
> > >>
> > > I understand what you mean.
> > > Based on the above conversation, your intention is that when the
> > > customer needs to upgrade the firmware, they should modify the
> > > comparison conditions of the version, then compile and burn the
> > > kernel, and then perform the firmware upgrade, just like the LT9611UXC
> > > driver. Instead of loading the firmware every time.
> > > My design intention is to avoid the need for recompiling the driver
> > > when upgrading. Instead, a file named "LT9611C.bin" can be directly
> > > sent to the "/lib/firmware" directory via scp. Then you can either
> > > perform a reboot for the upgrade or execute the command manually for
> > > the upgrade.
> > > Perhaps you are suggesting that we could follow the design approach of
> > > the LT9611UXC driver?
> >
> > Yes no need to rebuild, just use sysfs to trigger an update.
> >
> I think you haven't attempted to understand the intention behind my design.
> 
> If during the debugging process, the customer discovers that a certain
> parameter in the chip's firmware is not suitable for the current
> situation, then he requests a perfect firmware from our company to be
> updated onto the chip.

That's fine.

> 
> When there are hundreds or tens of thousands of devices that need to
> be updated, simply use sysfs to trigger the update. It is a very bad
> thing.

Delivering updates to devices it off-topic here. You can use SWUpdate,
Mender or any other system to deliver updates and to trigger the
firmware reflash afterwards.

> If you want to use version number comparison as the upgrade condition
> like in lt9611uxc.c, then the customer will need to modify the version
> number comparison condition and rebuild the driver. This method is not
> as simple as the one I have designed.

Well, no. If there is a firmware update, it should be shared to
linux-firmware and then everybody can benefit from it.

Think about one company using your chip in their SoM or compute module
and then another company integrating that module into their design?
Who will contact you? Or a company selling devkits with your chip.

Having per-customer firmware is a nightmare for developers and for
integrators.

> > >>>>> +
> > >>>>> +     lt9611c->kthread = kthread_run(lt9611c_main, lt9611c, "lt9611c");
> > >>>>
> > >>>> Why do you need extra kthread for that???
> > >
> > > Upgrading the firmware takes time. execute it sequentially in the
> > > probe function, it will block the system boot.
> > > Using the kthread method will not block the system boot.
> >
> > Just follow the drivers/gpu/drm/bridge/lontium-lt9611uxc.c way to do this.
> >
> In fact, I think the method in lontium-lt9611uxc.c is a very bad one.
> My clients often encounter situations where the system gets blocked
> during the firmware upgrade process, and they have no idea what has
> happened.

Patches are welcome, please help us by improving LT9611UXC support :-)

E.g. it would be nice to control InfoFrames or YUV output capabilities.

-- 
With best wishes
Dmitry

