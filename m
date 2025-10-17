Return-Path: <devicetree+bounces-228158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CDBBE90DF
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:50:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0497A4EC9F8
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D8A3570D9;
	Fri, 17 Oct 2025 13:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EGgdHgrH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38D73570CF
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760709008; cv=none; b=fLgLR66l9Ryn8uC0sHYH5jvSW20GZ2p8Q18wjIaUDHdsDpTfr+j1reUIS8ek21pHRui6FqLjfvJpYLjOQAiQ3Z17D+Qj6LlfP1xiBOVQj9slR76GvyFjYjxJMWxdP6iFLFuc0ePRkjWKFXY87XT4E67l7NfymB2Tf7Aa1a/EmD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760709008; c=relaxed/simple;
	bh=jCBPLoxbTcXpoIwMI2KLBvHfzepQyipbiJBh3dpz68c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WPCmjF2VYGI7ijU8zDLM30+YdI/cklG5PktNqEVI690PO8qmj3iCr0f/H4b+ii1jZA5P9s6b0Z9qBF++LO7KTcrrj06rRfKrs1nxRi8pcJ4Epz+tyFCruA4G6PePYx9bQvSMQB4cM0yzaTOadlnDA6nRDzZqr8CbE1C2Pq5Z8Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EGgdHgrH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H8BALs010061
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:50:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZHoSt8IC5bzvZIWqy3/h7W7Z
	nm3mbkyJccsL7Jtnypg=; b=EGgdHgrHUeYOSzONZ1dvDgqvKZBzBXV5hNBuI4Rk
	PMWVOPYkR/Nh2baIuHd0phzSpHUdtMytajldPPvIN2RkAIyxbPbKI9rRDiy+fNLn
	Ig1A0QKZ/O16ppCMd6MAXE8MeSbZo5BxwGu9LVbbKER4UVYM5ZcnAB1Ow9+RezQq
	/IMAI9XcZlm4KelCMOqoE6J8cvsUKWgfsY6n0QXQEFHcEPgsLtBE5ac8i7ZrtagN
	PIQ2TuxHr8rfx/Zi3yxZYNLT8a71uk/QumF1Anew/duUbumGQTDYzDct41C5EiR/
	IPE/hocQLFWong6vYT9wtts9duqmoAdv8GCguTwm9AfG5g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0cc8fh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:50:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88f7eff9d5fso735719685a.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760709005; x=1761313805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZHoSt8IC5bzvZIWqy3/h7W7Znm3mbkyJccsL7Jtnypg=;
        b=YXW0x8mTnAw7Zof34Wc6SYmidK7RYnNOtXM5C6e2XJunHFqEMeiNVn5sSWMDQEv7hk
         L+CwSd479CaFGcUsl8T7LFpZi7lR7BoecQ2/n6LduWswwBh0t2K+hUeVeCK1yu3zmk9Z
         xvmDjbGpVy5bmjFEdwBNeFDvd5bxKLEPOgfedlqx1VfBKJ1zAD3gJMiBgo1+2ikP3+Tk
         /PdfSAYnzkt6dGkOZ/djKjqllXNh36awDXBjrAvqcTgOTuIguOVP9I7gyfQ29TmLiDQl
         9aD3gOIe2QuGX+T77pikEDAX8CSvUcr8xtMAqsIJK1po+kcnnBEgJVsYxDzmo6nfb/Yo
         CS5g==
X-Forwarded-Encrypted: i=1; AJvYcCUidvk6ZqbJjDvhDEaCItlJ8GsUbbT6M+jAb8v7e1QNnwv0YbIe+3fpMg5ldOvtcxt9CSsp3G72X9La@vger.kernel.org
X-Gm-Message-State: AOJu0YwAfAehNFZNQtSovxNGGuFpYcf8VuJEULzj7LGsqNba15NrZ1Dg
	5OSxcMuPJh4zBfR6SucYnGH2fpcsEAyvcSqtU9bMJ43monknlH8HFrVIIKZ78e76IzCG9UM70LX
	wVziAhAjefliOuNv1AOg66RNjj9GTSVGd/T6ifiq9HiQxRiWG2I48KQLrcSxzvAHa
X-Gm-Gg: ASbGncuixflZ4aK+RXIlka9/lkfnYagv7Nyd9IA6fF24U4Nb4/NcsZmKRZzHBLiDfAE
	7CFTtfN4nMixqaqC8ym6dSK1X/Ou/M5RcqoPUryzfBaqvBuGwiBa4ele+V3r1eT/5onN9kl42st
	193sg5t35KVDSfneov4BaPtyoE/+aExTubUx5b9hay8joMPbrctHcNvVrZOV+yHI7lEBStNl8jM
	QMeEVAYIphDZ9YO4eKkhFWmv11sRMcH9vNBcqr8CyVZj1hmAb0FntqEL6Cq4fgC/yzdQBgLsQHj
	IElPG9OqmjS0aCgYwFv7yP4MG0r7ZijOY54s6BSHWOgn49/om4RBP9awGK0hAr34klu9zDD/I3I
	y3RgArfdSQqqXcJeXrkNWyTg2Yv7tixa61bj2YFkN/iBao6HP/sHwlzSVa1z2QDZB+mrbSDBTD0
	7ufzB4+IVm7L4=
X-Received: by 2002:ac8:5a0d:0:b0:4e8:a8df:805b with SMTP id d75a77b69052e-4e8a8df895emr7962691cf.19.1760709004741;
        Fri, 17 Oct 2025 06:50:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqUsEYIEcVJGSkj8DFafEbyFH2GPX9JGyMRzPejQmO1qiuEIsTN6uOm85wuZR70D1tQtNygw==
X-Received: by 2002:ac8:5a0d:0:b0:4e8:a8df:805b with SMTP id d75a77b69052e-4e8a8df895emr7961881cf.19.1760709003805;
        Fri, 17 Oct 2025 06:50:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908820d1f5sm7917522e87.55.2025.10.17.06.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 06:50:02 -0700 (PDT)
Date: Fri, 17 Oct 2025 16:50:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: Alexey Klimov <alexey.klimov@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: sound: qcom,sm8250: add QRB2210 and RB1
 soundcards
Message-ID: <kh54xgfvp6rypbvk7eyemg7zsvum2krhsyh6dqa5ck6zf3ph24@szxffcrzngd7>
References: <20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org>
 <20251007-qrb2210-qcm2290-sndcard-v1-1-8222141bca79@linaro.org>
 <b0d9cec5-1162-476b-8438-8239e1458927@oss.qualcomm.com>
 <CAO9ioeVcqT_Yhvz-RMCucLtcpa4xCLrA+srM8Vy_ZZ-650ZQnw@mail.gmail.com>
 <DDKF9YV37ETZ.3DXIDZA4ZU6I3@linaro.org>
 <695ff482-ad53-45fc-9ab0-ad69d8bc89d5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <695ff482-ad53-45fc-9ab0-ad69d8bc89d5@oss.qualcomm.com>
X-Proofpoint-GUID: Zje_ouFAkBIc2vOEaGwtDCd6OrEk643N
X-Proofpoint-ORIG-GUID: Zje_ouFAkBIc2vOEaGwtDCd6OrEk643N
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f2498e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=q5sTpNs5cBplgk-z1f0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfXzzmFyXYYu7CV
 8f0tBgro6L5N3pX2Bixx6fKBaqld5SIldXpwlpGQXzixYFynSyfzvNTKcCwBfwGopivVHgswJM1
 /r+beei5srI8DyFtcLAfTvTkPDCj8jq4b+0mt4CE4gvgwPR6rpkyEMldcOfThxtpAceI3x1ZumQ
 efAqr0S7gRP/uP1sgh9OB8sCL13RqA5F93tjNIv3HttPzV4qKLbKAVwyJdX1LQ6Hrl7U03/VfJI
 ZRiIoYuj0sVn0gbOpU11RlD4Lsx7XnHjBfhIXtNRRlIekEZbH6lyKgzLif6fgqiC57sr6lthsuu
 mxWeujDyj7bQQEo7vkXrZQvOTzEIcB8LdLG3/UXDiJLf+swOyS8kCzhBhRqv0Gf+D1fOeAld60t
 zIgEdf+F0r4ec+niy87/CFoFTbl/tA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On Fri, Oct 17, 2025 at 12:27:55PM +0100, Srinivas Kandagatla wrote:
> On 10/17/25 8:35 AM, Alexey Klimov wrote:
> > On Thu Oct 16, 2025 at 8:46 PM BST, Dmitry Baryshkov wrote:
> >> On Thu, 16 Oct 2025 at 18:08, Srinivas Kandagatla
> >> <srinivas.kandagatla@oss.qualcomm.com> wrote:
> >>>
> >>>
> >>>
> >>> On 10/7/25 2:26 AM, Alexey Klimov wrote:
> >>>> Add soundcard compatible for QRB2210 (QCM2290) platforms.
> >>>> While at this, also add QRB2210 RB1 entry which is set to be
> >>>> compatible with QRB2210 soundcard.
> >>>>
> >>>> Cc: Srinivas Kandagatla <srini@kernel.org>
> >>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> >>>> ---
> >>>>  Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 5 +++++
> >>>>  1 file changed, 5 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >>>> index 8ac91625dce5ccba5c5f31748c36296b12fac1a6..c29e59d0e8043fe2617b969be216525b493458c4 100644
> >>>> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >>>> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >>>> @@ -21,6 +21,10 @@ properties:
> >>>>                - lenovo,yoga-c630-sndcard
> >>>>                - qcom,db845c-sndcard
> >>>>            - const: qcom,sdm845-sndcard
> >>>> +      - items:
> >>>> +          - enum:
> >>>> +              - qcom,qrb2210-rb1-sndcard
> >>> I don't think you need rb1 specific compatible here, unless there this
> >>> is totally different to what the base compatible can provide.
> >>
> >> Why do we need to deviate from other platforms which declare
> >> board-specific compat too?
> > 
> > There seems to be now a few incompatible suggestions for rb1 sndcard:
> > - make it compatible/fallback to qcom,sm8250-sndcard (1);
> > - make it compatible/fallback to qcom,qrb4210-rb2-sndcard (2);
> > - add separate compatible/enum for rb1 sndcard as qcom,qrb2210-rb1-sndcard (3);
> > - add base compatible as qcom,qrb2210-sndcard and fallback
> > rb1 sndcard compatible to it.
> > 
> > The latter one is ruled out because base compatible should be used and
> > it is not going to.
> > 
> > As far as I can see the last addition went simply with (3).
> > Which one finally you all want?
> 
> Am fine with either "qcom,sm8250-sndcard" or "qcom,qrb4210-rb1-sndcard"
> as long as we reflect that correct driver name in machine driver.
> 
> traditionally we have SoC level compatible which works fine for 99% of
> the boards for that SoC, expectation was that if there is any deviation
> or board specific changes required, this can be accommodate using model
> information. am fine with board specific compatible too, however am not
> okay with both "qcom,sm8250-sndcard" and "qcom,qrb4210-rb1-sndcard"  or
> falling back to another board compatible for various reason one being ucm.
> 
> So 1 and 2 re *NOK*
> 
> I hope this provides some clarity here.

My preference would be to follow the established pattern, unless there
is a good reason to deviate from it. And... it seems we have several
trends there.

- qcom,SoC-sndcard (with possible fallback to earlier SoC). 35 usages
  out of 49, including the recent ones as X1E8, SM[4567]50, SC8280XP,
  QCS8300 and others

- Two users of qcom,SoC-qdsp6-sndcard, let's ignore them.

- 12 users of Board-specific compat string, which includes RB2, RB3,
  RB5, RB3 Gen2, FP4 and FP5 (and several other platforms). Some (3
  SDM845 devices) of these devices use an SoC compat as a fallback
  string, which adds weight to the first bucket.

The "winner" is obvious, but I couldn't help but notice the lack of
generic approach (and yes, before i grepped '-sndcard' I was under
assumption that the board-specific sndcard is a recommended approach,
looking at the boards and phones I cared most).

TL;DR. Alexey, I'm sorry for the possible misguidance earlier. It seems
this device should also use a generic name "qcom,qcm2290-sndcard" (or
"qcom,qrb2210-sndcard").

-- 
With best wishes
Dmitry

