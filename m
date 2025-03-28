Return-Path: <devicetree+bounces-161573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 892F1A749F0
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BE5617A99C
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BD5DDBC;
	Fri, 28 Mar 2025 12:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RSVjqBX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B38F7D
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743165767; cv=none; b=CAxKARNpOh+iSvFVQH5TZoT0XPNaYs6g2tGBBHmGKOKjlswGC8CdodIn6ItI9kDCp6kZzNGgc03vJNarMP1qvI6fm6n9uS/XarbIGyS5IU3Fy7rzMAijceivjtWnRklAQiHczLs3E+AOF7SYoiZzXihZcMOXutPHYX5DkXci2vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743165767; c=relaxed/simple;
	bh=bQDpPCtUhvgJJ5g/t1g/tDAcU68+OQ9HEBz9CRO8tDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C4Uvrf57qRIeVS7qFXYhMec5mw530JNHkY9l9isVDuM6ifYgPWdKJ5xpPA0oV09Zei6UDTPzFnh2jVadM6t41psE1f+AMO+ZI7NP3k3VZ0LhhsKoF9Yt0x/7iQPryTw5M1Y1RGreWB0xQ0udNnRlxrkI9z+tnpPeaeDPpu8+9+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RSVjqBX5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S9vQqC007000
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=14wfkeUYgJyjMP20QYKCrYEP
	yG67GgHvAYWTR0MQ0Bw=; b=RSVjqBX5WL1IV9CajtGOzznjQq0WZZzM5tg1qD+S
	x974QeRw2AtpH9dz16GHFYvFmem822tQ3bI5fGEGWJh8G6Cdp01971TCfxCIEaSQ
	S0wpJkplSnqoM61h0Y1KXFbxzsMhiMZyFzDUgCkrtF4X+8fq+db5y+NKpkJE+pgE
	dxYEHt+S3t6ZZDLnEueWaZ93QVMAN8abVjW2KJxKbex30HXpb7xuG2Z+GeQAq94Z
	wRWMgN1AZ0+bV/s1oavCXMeHTpK6KT72k2nuZV9cRKPmSXlWWuc5BfNsdYfboje8
	X5AS5Z1DrhvJ3OsWgjDeU2xP7si4MAL8JFQ/Ii5t7D/Sig==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45manj8hyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:42:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f7210995so186357185a.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:42:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743165763; x=1743770563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=14wfkeUYgJyjMP20QYKCrYEPyG67GgHvAYWTR0MQ0Bw=;
        b=xB7dlNzodh5wEt26Kxxav8iwVVSBa9VHeR7tbqk+g4Hej1q2GGRPir3zM/I/sna1S/
         HQyfSPgB7t2fV0hdVirpkQgtcNItEb/bSj2L5iuELfxPgFKSjucjmHYyIGrxmUAIHaYy
         5je0g4ofM88TiC2tCV6+BOMMmMmLhzrtstkPhlQzB5aNwrMVPKuWF244U/9qm5iWB/mV
         FBzivB/KU5J9JlZDUnSXGfkRt/IJEoMih9RLdkFHpyz07uJOBq+w9gpbDIGHv8pV9Aj2
         BL5qQ9wF5KAgDKnL0LZNtb4BraQt7S3jV7zUxcDhpdd5WMwI+yj2YCTqkCv180Sj+QbC
         VPNw==
X-Forwarded-Encrypted: i=1; AJvYcCUC+pyMTK6Aby8aCRoet8O7nQubYx7V9u3XiScTv/AQjL6IQez610ROyPe/6z8sIyXb9r2zgUgDyWtf@vger.kernel.org
X-Gm-Message-State: AOJu0YySFmBTGm9njF9NBw265/EttQ5Za76zqLolvXEQRQ4GC5eSdeTT
	ZIFaCwN5U+y7ZG6dJimJ0/x5Q/XWR7qKbxrFJ9nx77I645oYuLOqA0q6qij8RWf5ocGyocAfNcI
	Q943L1m7pUUSHhdQxWQntjsqRuLCZ4jf6AR4XVeWlGDWgK3kSbhKxkUm7uZDNzh576XUW
X-Gm-Gg: ASbGnctUwe3+2fN7q68aMUTy/Ot2ikVLCmGfsoPHka34zvO4qyhaRqPZxGC8s3npemy
	XYp4p95z2mAKY5fhNUMFVrrFr472EphvPrhSaQDgDm27BXsrex0kiOr5vxFGfaPjFcj5X7t8b3Z
	PfDnruHppJzVoknXFdTAfp325il4wqfV0ULiT5/giSvj50pSeR1MEfPvwMeFhc0fy8aj1HOMUQd
	C+udagAvZFa1DcXP1x1vE+GPVcD1UUYW2LuI+Hg0USRwlAUqdClz0rZRMfLyQCrmU8tDoAQk42h
	6dCNi3YvR3uKkxQ3dCNmNWNGIQ0UI8LIsOJsSobRqheOQv7fKBS4Pos6yOcYAdpZ9KC4HSj63MG
	huM0=
X-Received: by 2002:a05:620a:17a3:b0:7c5:e8c5:a307 with SMTP id af79cd13be357-7c5f9b83df6mr358598985a.9.1743165762637;
        Fri, 28 Mar 2025 05:42:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFF8gtMExOuPLX60Y/NWAprj6cU1KqqKQnEnc8pwizsNlXZ+YMUgbsuyMomHSvBH+FClZ/jw==
X-Received: by 2002:a05:620a:17a3:b0:7c5:e8c5:a307 with SMTP id af79cd13be357-7c5f9b83df6mr358594185a.9.1743165762076;
        Fri, 28 Mar 2025 05:42:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b09590f43sm298804e87.177.2025.03.28.05.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 05:42:39 -0700 (PDT)
Date: Fri, 28 Mar 2025 14:42:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Georg Gottleuber <g.gottleuber@tuxedocomputers.com>
Cc: Ettore Chimenti <ettore.chimenti@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        wse@tuxedocomputers.com, cs@tuxedocomputers.com
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
Message-ID: <2bm7rmsznt6t5wnjlyssrwhk42akh53suxfile633fkanhs2gh@3cl4zr54j5wc>
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
 <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>
 <5hvghahezqms6x4pi3acgaujyhiql6mzl2xhzph5phhki2yiyq@oi3xjatj7r64>
 <129bf442-2505-41c8-9254-ad7cacefab89@tuxedocomputers.com>
 <l77iickvroov7crzg6s2i7nq3kakqgdtbqki74stavqkiwyjfs@rv2oegbwogxi>
 <p5dxsjp2xdl5esmpxseqiy4n2xsici5fvow6wtiquhq7ixmlkt@fty3ez75y5ld>
 <CAO9ioeUSSshmw6gdEhQNzgAUQLh44etHRAsOThwFZ_9mfyJYiA@mail.gmail.com>
 <56b22711-1d78-4cc9-8a32-cb4805497ebd@tuxedocomputers.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56b22711-1d78-4cc9-8a32-cb4805497ebd@tuxedocomputers.com>
X-Proofpoint-GUID: 5nuWITxfLX5MbS3gcIajdcvcLgs9s5o5
X-Proofpoint-ORIG-GUID: 5nuWITxfLX5MbS3gcIajdcvcLgs9s5o5
X-Authority-Analysis: v=2.4 cv=KvJN2XWN c=1 sm=1 tr=0 ts=67e69944 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=hw263EMk9VmrFZoxUeAA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_06,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280088

On Fri, Mar 28, 2025 at 12:34:43PM +0100, Georg Gottleuber wrote:
> 
> 
> Am 21.03.25 um 16:51 schrieb Dmitry Baryshkov:
> > On Fri, 21 Mar 2025 at 17:49, Ettore Chimenti
> > <ettore.chimenti@linaro.org> wrote:
> >>
> >> Hi Dmitry,
> >>
> >> On Tue, Mar 18, 2025 at 11:36:32PM +0200, Dmitry Baryshkov wrote:
> >>> On Tue, Mar 18, 2025 at 04:24:27PM +0100, Georg Gottleuber wrote:
> >>>> Am 07.03.25 um 07:45 schrieb Dmitry Baryshkov:
> >>>> [...]
> >>>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> >>>>>>> new file mode 100644
> >>>>>>> index 000000000000..86bdec4a2dd8
> >>>>>>> --- /dev/null
> >>>>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> >>>>>>
> >>>>>>> +&gpu {
> >>>>>>> +       status = "okay";
> >>>>>>> +
> >>>>>>> +       zap-shader {
> >>>>>>> +               firmware-name = "qcom/a740_zap.mbn";
> >>>>>>
> >>>>>> Are the laptop's OEM key/security fuses not blown?
> >>>>>
> >>>>> Can this laptop use "qcom/x1e80100/gen70500_zap.mbn" which is already a
> >>>>> part of linux-firmware?
> >>>>
> >>>> It seems so.
> >>>>
> >>>> Because there were no logs about loading zap.mbn, I activated dyndbg
> >>>> (dyndbg="file drivers/base/firmware_loader/main.c +fmp"). See attachment
> >>>> for dmesg output. But GUI freezes after sddm login.
> >>>
> >>> Does it happen only with this ZAP or does it happen with the ZAP from
> >>> WIndows too? Can you run some simple GPU workload, like kmscube from the
> >>> console?
> >>>
> >>
> >> It seems to work fine changing the `firmware-name` property to
> >> "qcom/x1e80100/gen70500_zap.mbn" and updating to latest mesa on Debian
> >> Sid (25.0.1).
> >>
> >> Also tried with linux-firmware binary blob.
> > 
> > Then please post an updated patch, using firmware & ZAP from linux-firmware.
> 
> I'm sorry, all our devices are engineering examples (including Ettores).
> The mass production devices will be fused.

Then all the firmware names should be adjusted accordingly. Please see
the names used by Lenovo T14s as an example.

Also we'd really appreciate the firmware being contributed to
linux-firmware repo (again, see Lenovo example).

-- 
With best wishes
Dmitry

