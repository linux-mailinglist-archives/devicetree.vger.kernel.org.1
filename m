Return-Path: <devicetree+bounces-238636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAEFC5CD5E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:23:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 109544E1A51
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F172E1C6B;
	Fri, 14 Nov 2025 11:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MF5EcXQo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AK3fBG3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D0CBE49
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118978; cv=none; b=ryViw2y/SPGmczdnOlloA3Wy3zR9cNrg3ksnHnaMyi411XNuTvi9llj4jusA9gi4k4p16WGVigw4S4ksKkm1bvsDei2rC2HmwuYYw97UU3FtDufnJ2v+gUdpIeIBoQjbGMA0/ltw0hpmswhOS3RnSvPdQy9Hk/Xmdc8hh3KVHk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118978; c=relaxed/simple;
	bh=UcJ4F1KYWrO4On6fL5rR8B8Valk6lUu37doeAE3Iwqg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CCtBrgevFbHXxyxlqjIbZBXad+atLHtrIkxaCU3lmo3Lf7PMY+BBsiOM017DRnpZ3uHVboFQtxnZ+5yxG9YVPF4y5QEHaRccQVQ1vdQAUjKOXBrCYmAn7qDzEQB1WozTBMCwH+ruDLL4b34OCtGfoZuaIafqPRWFW7UR+GzdF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MF5EcXQo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AK3fBG3L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8Gi0s1497489
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:16:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CZ8onjE/7OaE9hw5UzyAIQZRdquOeTbEhqDF1iMEQIk=; b=MF5EcXQoprYWPOv2
	pbCM18oA6jCu7BmJjyevTcl0kPdOo9YvGwxrfwmUaan7w++fVoT9Nod0+NrcW90M
	//93an4TyDQZ+BC68tumTS1yKqSn+lfDMQI9ca6afEGcGUJSzKHX0/zAAylE2NEo
	+IVCP+jmNV5LAMIihOHiIdAWAQYmwnvbcHR71KZOFVTuoQYbK0f+WS2+LMcmXjV3
	S+xZg8fkrZCHwfZNyI4A29Nf+AvKOeRc8KdmZxUDb6cu+n9b5WEgs/AEI0oZIqPE
	bsnLr0UQYUT2r5eMMzxh9w964RlnpzuvookeT5FUkHkY26l3uRjUdWY1kLHwvUi2
	p4vXsQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9hsxsc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:16:15 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b9090d9f2eso2275310b3a.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118974; x=1763723774; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CZ8onjE/7OaE9hw5UzyAIQZRdquOeTbEhqDF1iMEQIk=;
        b=AK3fBG3L23/vNBQ+dt1seAhA4prfuXm29Y23gJPwBT3G51sTfe5CoI3/JHRMgY1v3E
         QQQChLoUzknTYYpfFg4eEiIml508UH8UNAoqEn5IOwnTH/w0DFd06rzBCnG8BBQJpC43
         ePmugjdutxT8N9cdR//Wl8nny/jHftiud1kWlt/B4RAD1mz9/BM43OYfV/uOGA4WEQyf
         hRoIFfX0cTudyQBuiQ2vriG6mo3r54d7AjBI3UHhBO9jtSQ+gcWJqUXvFwlqeX9UTVY5
         Xaw1qmCD1O7Gy5N9GICZbwY/jIaHSonjM+hwd04+siX9vYUddBy+mvhrytfDd5E5yQY6
         ldhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118974; x=1763723774;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CZ8onjE/7OaE9hw5UzyAIQZRdquOeTbEhqDF1iMEQIk=;
        b=MkWavxZ+HAPHB1DAF17cGRLJ75pjTUxAVLgS8ML7AJDn751nL++oEEOkmKvw3miL9q
         kpeccmhR7yNQFvUJFruf41DGML2GR3BX48u3hApDmDB/0ZVAWFxakYFOFgurU9UOHoZK
         PXY0q2CLsdgohAT//eLiPpReA6+KNDEg+1bKb2RZSTJZcmvotKI09Bt7hUCVRgLhsDjw
         SFBfs3LItdMFTs6z/Mza/bNEzGYhEZP2zuqraJFHlyElwYOLw2z5s0u2qCtEX/SqzwN+
         2xm3/qR9ULuEo64q8tAfQURDVG5WG/yDaIEh2vjcbFV/pHUZPUFXFSdlJ2MRd/0pskt2
         ib6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX9/zEzaPpRXQ9P5IY2XJwR76UYHMgRZdiQpudTpBC7YPABGSw+qpS9Auy14rmv4ooEQ5TorTIrORQM@vger.kernel.org
X-Gm-Message-State: AOJu0YxylMIm3aVPqFglLoksEOP3sdpxhwngiWASJhi2cJy1Idl79I7C
	u2rXMM4ITWHQNS1W31hhAU0tY532uvpOt3bn/iRevZ76qwq3EjsBymOp7CArNUfefY7EyDmMYO9
	x1+Smdz84z5WGV1VwIlrwdYPSqtxSG7Lf8z3a9n6qrsUD+ObepShdw9/y2hsyMhX2
X-Gm-Gg: ASbGncukUWuL+JklXTh/m3SWMBKJJfERTRBnoYsVkbx/hRhPt7+Whvslh8ZK0lpbDWQ
	9gZyeRTY3E4LaFN4ICx4LRrgzsL2pUu0zb23jLIO3pyCk61UalpOud0O/JFV+1krq4mgIOtHJtz
	VN/wRcifTsF2PwjoR1tokyYDlqQjgTNfbJdzWoJ0z0iWC2+doWSeQP5cXozBvJDJ8XuYmYlGocn
	N52XO+UECTKUS+EGh+VV6KfhDCXuv63iupBaIwvsaLNRry9subO/3crG9ThKQ24+5wlCXSQYrBu
	z+n+RX5rfbVRUeiSVihVOPm6hyn1dfipJ9y1Mbef6S6VekpO7KZ8+zzxSfwTixG3FPaf9KRs+l9
	3s1bKxdY5mEleffY=
X-Received: by 2002:a05:6a21:e098:b0:342:f5bc:7ce5 with SMTP id adf61e73a8af0-35ba0189681mr3732157637.19.1763118974414;
        Fri, 14 Nov 2025 03:16:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFod3yfShExltGVniSBUsOUaxRRfujKg3U2KnJt2F3JQHHj5TZebVtDeHhgIkrZk/ReQ7B36w==
X-Received: by 2002:a05:6a21:e098:b0:342:f5bc:7ce5 with SMTP id adf61e73a8af0-35ba0189681mr3732119637.19.1763118973893;
        Fri, 14 Nov 2025 03:16:13 -0800 (PST)
Received: from work ([117.213.102.44])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36db21e8esm4486192a12.5.2025.11.14.03.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:16:13 -0800 (PST)
Date: Fri, 14 Nov 2025 16:46:00 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: srinivas.kandagatla@oss.qualcomm.com, Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
Message-ID: <kn24jkn77ydcrn23xz6z27cvaclksmeb3ic7pr24lxsqediugl@ubkf5t4wyyrq>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <20251114-ath-variant-tbl-v1-1-a9adfc49e3f3@oss.qualcomm.com>
 <3a951821-14b1-464e-b1da-05a95f4164af@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3a951821-14b1-464e-b1da-05a95f4164af@kernel.org>
X-Proofpoint-GUID: q32JiSFn7IsdKwigBlzLqBKmpWlyLn-F
X-Proofpoint-ORIG-GUID: q32JiSFn7IsdKwigBlzLqBKmpWlyLn-F
X-Authority-Analysis: v=2.4 cv=N+Qk1m9B c=1 sm=1 tr=0 ts=69170f7f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Nd/jlyMbCgud2ZEcqXkYLA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7djovcsh0G9526kC70UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4OSBTYWx0ZWRfXzO5SRafmbio/
 6j8OHfi1HyRBpd3mBoYrpXq78nL/Wz5tM9zbP8J5HHbWmL67hLyJ/VJxuv0ZhKnmEOR+YK7sVY6
 AAsWFAJuM/ZC+Eni/+qXQ/cAyzZbpmvI+i4iWfpsem90IVwowB3fB3EPp4+tQQKByrKrxcgitY1
 UrCu4YDzOpiwAJHsn+s6bZ8EvjsMiEXzR3NrbKnsm6qm3KYiYr9Q2N8fOgfAdzkLPZD/zWdMoxv
 DKiP12FjlzzxPvkQFXOnsmeRZbWvSp1GjlKmaVdaNBhkDmL1pbIRLXA0J8PUAsRcThFQJLqRXji
 k97m/Yozv+EUJAykiicwr83TqFXt7NLZNsf+oHWq3YoBFV3wd+FONuwo/QF9moFyhrMnKtJwU2t
 2uGEAZinRFI9GICjciH1w6shoyapGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140089

+ Srini

On Fri, Nov 14, 2025 at 11:45:30AM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2025 11:22, Manivannan Sadhasivam wrote:
> > On devicetree platforms, ath{10k/11k} drivers rely on the presence of the
> > 'qcom,*calibration-variant' property to select the correct calibration data
> > for device variants with colliding IDs.
> > 
> > But this property based selection has its own downside that it needs to be
> > added to the devicetree node of the WLAN device, especially for PCI based
> > devices. Currently, the users/vendors are forced to hardcode this property
> > in the PCI device node. If a different device need to be attached to the
> > slot, then the devicetree node also has to be changed. This approach is not
> > scalable and creates a bad user experience.
> > 
> > To get rid of this requirement, this commit introduces a static calibration
> > variant table ath_calib_variant_table[], consisting of the platform model
> > and the calibration variant for all upstream supported devices. The entries
> > of this table are derived from the upstream DTS files.
> > 
> > The newly introduced helper, ath_get_calib_variant() will parse the model
> > name from devicetree and use it to do the variant lookup during runtime. If
> > the platform model name doesn't match, it will fallback to the devicetree
> > property based lookup.
> > 
> > Going forward, the devicetree based lookup will be deprecated and this
> > table will be used exclusively for devices connected to the devicetree
> > based host platforms.
> > 
> > Tested-on: WCN6750 hw1.0 AHB WLAN.MSL.2.0.c2-00204-QCAMSLSWPLZ-1
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> > ---
> >  drivers/net/wireless/ath/ath.h         | 98 ++++++++++++++++++++++++++++++++++
> >  drivers/net/wireless/ath/ath10k/core.c |  5 ++
> >  drivers/net/wireless/ath/ath11k/core.c |  7 +++
> >  3 files changed, 110 insertions(+)
> > 
> > diff --git a/drivers/net/wireless/ath/ath.h b/drivers/net/wireless/ath/ath.h
> > index 34654f710d8a1e63f65a47d4602e2035262a4d9e..d0a12151b7fc13355161c48ba1fb200e4617ed11 100644
> > --- a/drivers/net/wireless/ath/ath.h
> > +++ b/drivers/net/wireless/ath/ath.h
> > @@ -21,6 +21,7 @@
> >  #include <linux/skbuff.h>
> >  #include <linux/if_ether.h>
> >  #include <linux/spinlock.h>
> > +#include <linux/of.h>
> >  #include <net/mac80211.h>
> >  
> >  /*
> > @@ -336,4 +337,101 @@ static inline const char *ath_bus_type_to_string(enum ath_bus_type bustype)
> >  	return ath_bus_type_strings[bustype];
> >  }
> >  
> > +static const struct __ath_calib_variant_table {
> > +	const char *machine;
> > +	const char *variant;
> > +} ath_calib_variant_table[] = {
> > +	{ "ALFA Network AP120C-AC", "ALFA-Network-AP120C-AC" },
> > +	{ "8devices Jalapeno", "8devices-Jalapeno" },
> > +	{ "Google cozmo board", "GO_COZMO" },
> > +	{ "Google damu board", "GO_DAMU" },
> > +	{ "Google fennel sku1 board", "GO_FENNEL" },
> > +	{ "Google fennel sku6 board", "GO_FENNEL" },
> > +	{ "Google fennel sku7 board", "GO_FENNEL" },
> 
> Are these top-machine models? If so, you cannot use them. The value is
> user-informative, not ABI. If you wanted to use them, you would need to
> document the ABI.
> 

I had this question initially, but Srini convinced me it is OK to use it in the
driver as they do it in audio :)

> Just use compatible, that's the entire point of compatible.
> 

Ok!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

