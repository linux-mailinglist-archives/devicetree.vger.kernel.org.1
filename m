Return-Path: <devicetree+bounces-232286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8160BC16190
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37D61188F4BA
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E4D3370E1;
	Tue, 28 Oct 2025 17:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j5LChewD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VJNRW5eW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280AC28AAEE
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761671679; cv=none; b=U4weIqNKDypN+Y2HGgkaHkuBE2jLvcRm7JpGgQ1r1rlo0EAqArN0NIpmGywlLWQYP1I4rl2Xtjq7tboMLQIHpZ15iwzq4vKOgOOQ2reS/eMZWO7dq2Hyc653+8cNi2khurKWV4W+X7U95/VGqQbpCTUgm5mHycLrpsftvo+e088=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761671679; c=relaxed/simple;
	bh=3kg8pm+ipozBp5qg66HN7+L4B/rkdJ2gW4sZUsIGJYE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p4g3RlpKDdrJAGLB4bmva4LThhJsQPJYfteoNidZp7urnC4Ty8JfZVAd49SwidkxjPHP87T5dNMo12h+LaEDD1jO79Bs2PCtgAeUylKvLrRo11zbztT/soAmmzp4QxBl80IzZMptlk3aK9KHZPuJ+TcXgVP0B2kXil53tC0aMBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j5LChewD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VJNRW5eW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SEnoB81866243
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gxb46NWzma98thgTgD5WIO0EG3UlYsA249URtd+Q3Cc=; b=j5LChewD1XVfder+
	UpdEPlswdsy8nGztNGRMSTVxyAQ4T0kF5ryF4s4r4l3K3MjzNmRfLEYCpRP3v1J3
	/FjPzlj8iFi73rn9uBzGO2PJZals+jFm7I5ZSA1Zlr1R53lIQpPTjIzCDL9N765s
	GqAxawUXxcmfCylAfip3r3DtK74gjNyXMnsg7qzO2mCLkZFQJSlw6/vFw/3OIgTN
	bTboCSJztQDJ55F6co6x6nzATgoSD2siiFHzaPIRFXCpucCKz40daFuP0EoSeVC3
	Vi3H/ZokgrXlttjWp12bJUdYW15A6Hmo7NN1B6fX7mPokP3x/lmh/laehk7VXmH7
	PlCJBw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2wspry3x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:14:36 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-65363c973bfso7994204eaf.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761671676; x=1762276476; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gxb46NWzma98thgTgD5WIO0EG3UlYsA249URtd+Q3Cc=;
        b=VJNRW5eWLdXIvKUAaIbP1akaiKmK9aZFZb9Wct8rsrIWA6dWQ5eCwBJ5XPcm1OW5hl
         VXSOaKGHXRaW2UoTTELDU1+CMHpbbgcgGi8AS20ghl8fLfMjle4haft/Pa7/I+mvZOtH
         J6hCt1EiQNXAu5AML3yFz1PR1GQqjOFPjNxVTtZJ3kc7Bhvj6dxBupi7sehBmI+5aTHa
         EwcCwUkAAraW90jsEFwVjhnGp85PYseibLeGW1xZkr33BIYALnOIuSTjIdz0EWX9K6rg
         cNmHw7i0BAx2irM4Zv6mGIjo7muk3KCgargQFQw1B6mQbfcktrg3W229UTyzM5Xo4Ubf
         FRMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761671676; x=1762276476;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gxb46NWzma98thgTgD5WIO0EG3UlYsA249URtd+Q3Cc=;
        b=kWMmpxXsHJCscE0g2GKoZJnBOScwalGitTaaqAr4gKyLT2C5r7ODcmmLSZ8fjjVVyb
         g6lpBj3jGCld3TwNYAqANBlvizP+vUKc+u/ODKeNh2VZkgZaglu/nEDSnUvGPnqRSth/
         vjhOqsOs3vF21G4MSloR+ZAbV058McSq+IsJcICKCPuXkUybAIvFQkLBGT22CiX404Bd
         btqAH9kE8ueGsfmH4WAZudBlSrh9V58Khx+o4RTSll2MRYiGbgC++tbRSUXjWLjgJNuG
         2S5WPaprRjOukBrBCBIHM5F8aSa6W/o5+inO1/X2Z5x/rY/2Ejmb78Y3+/Zq8KGI00Zw
         jOUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ3xZxTBGprtRx1dO9/FWAXxyau6+qX/bPr7d62jjjxGm4faM1sNFrq+lYVw3A23GvsYCb1JIQWCYp@vger.kernel.org
X-Gm-Message-State: AOJu0YyrZKEOmRK7iXSvrqwuNbKo/v3nsDOkyVoTEac5jv4EODkjY+wR
	NYVb2KtvkbnFmewkI/FgB9k81kjhXpbvvA+Ixukb6gxDMO4RjJmOp8h3IGAQFCxT/3daGzNZf7B
	Zd1cYLS4Rf/BbdyEvabA+p3YhJRrX2GUgtCyzQJVC3mNFlH78YAOJHXWKKVaHEREJ
X-Gm-Gg: ASbGncvLX6M8YBxb46j7MKgqX/ZA+mmLzwDfW5zkX4qAzsMB0MNmXlbf8QzIVXNsrmg
	hg/EyWexGz1DBP5zwza4PG7Haj9L+XGVaAsj41NYo5WNWCt1yDls3WmeDfy1aAs3IyGayS5tWDt
	l7Wwrh1dV9o48ek5ZsgKKlRG/0sqQT+QgVLdXTIF9fVY0c5IcWa3g1P3cSIrTfNw5rlfGyZ/3L/
	3X1fa363pOBg0dEV7O5YTFUjAnjD7pQ2PrDlNxGRMNaIjrreH8kOcfupBjZ1DmAueUxjxpDNQpT
	kyhLML3Tznc2+Cvrd2UrmHNzgwzbJTWmIaEGsRB9vKKvZ6fzFu34SFSUdUQnCV+TivkbME+p7rr
	RhZXwIJIWqpfagafI58J8M7GxHGuD7IBy
X-Received: by 2002:a17:902:dad2:b0:290:c5c8:941c with SMTP id d9443c01a7336-294cb524ea3mr54293835ad.29.1761671043605;
        Tue, 28 Oct 2025 10:04:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtzDr6X5aUCAoZzurF+1ndW4gB0Y+G8nqn3G7w/pfodue5lneHQr9xHEF0fYtoNg8Eqx84kQ==
X-Received: by 2002:a17:902:dad2:b0:290:c5c8:941c with SMTP id d9443c01a7336-294cb524ea3mr54293335ad.29.1761671042996;
        Tue, 28 Oct 2025 10:04:02 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e4113fsm121499185ad.90.2025.10.28.10.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 10:04:02 -0700 (PDT)
Date: Tue, 28 Oct 2025 22:33:56 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] watchdog: Add driver for Gunyah Watchdog
Message-ID: <1f2f46ee-40c0-4967-9f39-fab791eff76d@quicinc.com>
References: <20251028-gunyah_watchdog-v3-1-e6d1ea438b1d@oss.qualcomm.com>
 <25f7ff09-08ea-4969-9184-9fd01b097558@kernel.org>
 <76479593-c47b-41a7-8349-5d7c1403f7c0@oss.qualcomm.com>
 <73955d58-544c-4299-a099-bfd9e5912a40@kernel.org>
 <636a1f99-acd4-4904-8fae-f159646cc1a0@kernel.org>
 <f4d80be9-986f-4d37-9c25-725eff7bb653@quicinc.com>
 <e03373d9-e2dd-48b6-93a6-554fcd623718@kernel.org>
 <59a00934-cb42-43de-ac5b-a9292b08301d@quicinc.com>
 <ad48a3d4-d0df-4581-9377-639af87f0960@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad48a3d4-d0df-4581-9377-639af87f0960@linaro.org>
X-Proofpoint-GUID: WSDd5xOphIleMLvz7N7XLmRJXAxFq4D1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE0NiBTYWx0ZWRfX1jsoMA+vj2gz
 Z1t+ZUvgEQnbavezPV/x7ZNj4rtN9lWsHMQC0p50FFE/yeEAm0Hsw+2V2c4KjHrtxeFXyMuGbk8
 398CIaXbXvtyYiSDeZrv9jveezvUQIzuZnafEBF6rK0DvAQQeRY4djcHaTCv1NpDcPgE+E4Nvoy
 AUBsuAMM9aw/zfCIihLvfB05SSR1oJcG34QEtinoQThw9jIhVCeoL6olsw+/6w2B8VtxiG2n8SW
 XPVivTrwO+epS4blPINquHyMzWMgsL9bESTI4uEoiGPEppgJ4yoXiY1zNHFTRW1jSUwAnAX+LWX
 GP930UN3eKgxJmXuJWZCHU5EwkEplAm5D3bVwcPBqDlJcDZEkzXqTk+NK7tA7gBCdxkjLRzg+tS
 qWVxqult0DnKtvwy1zIpAao3qkMjLQ==
X-Authority-Analysis: v=2.4 cv=aIj9aL9m c=1 sm=1 tr=0 ts=6900f9fc cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=8nJEP1OIZ-IA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=tIVOHhiQxfCKmF6C710A:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=k4UEASGLJojhI9HsvVT1:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: WSDd5xOphIleMLvz7N7XLmRJXAxFq4D1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280146

On Tue, Oct 28, 2025 at 05:39:26PM +0100, Neil Armstrong wrote:
> On 10/28/25 17:33, Pavan Kondeti wrote:
> > On Tue, Oct 28, 2025 at 05:17:44PM +0100, Krzysztof Kozlowski wrote:
> > > On 28/10/2025 13:27, Pavan Kondeti wrote:
> > > > On Tue, Oct 28, 2025 at 12:07:40PM +0100, Krzysztof Kozlowski wrote:
> > > > > On 28/10/2025 12:04, Krzysztof Kozlowski wrote:
> > > > > > On 28/10/2025 11:58, Hrishabh Rajput wrote:
> > > > > > > 
> > > > > > > On 10/28/2025 3:10 PM, Krzysztof Kozlowski wrote:
> > > > > > > > On 28/10/2025 10:35, Hrishabh Rajput via B4 Relay wrote:
> > > > > > > > > +
> > > > > > > > > +static int __init gunyah_wdt_init(void)
> > > > > > > > > +{
> > > > > > > > > +	struct arm_smccc_res res;
> > > > > > > > > +	struct device_node *np;
> > > > > > > > > +	int ret;
> > > > > > > > > +
> > > > > > > > > +	/* Check if we're running on a Qualcomm device */
> > > > > > > > > +	np = of_find_compatible_node(NULL, NULL, "qcom,smem");
> > > > > > > > I don't think you implemented my feedback. This again is executed on
> > > > > > > > every platform, e.g. on Samsung, pointlessly.
> > > > > > > > 
> > > > > > > > Implement previous feedback.
> > > > > > > 
> > > > > > > Do you want us to add platform device from another driver which is
> > > > > > > probed only on Qualcomm devices (like socinfo from previous discussion)
> > > > > > > and get rid of the module init function entirely? As keeping anything in
> > > > > > > the module init will get it executed on all platforms.
> > > > > > 
> > > > > > Instead of asking the same can you read previous discussion? What is
> > > > > > unclear here:
> > > > > > https://lore.kernel.org/all/3b901f9d-dbfa-4f93-a8d2-3e89bd9783c9@kernel.org/
> > > > > > ?
> > > > > > 
> > > > > > > 
> > > > > > > 
> > > > > > > With this patch version, we have tried to reduce the code execution on
> > > > > > > non-Qualcomm devices (also tried the alternative as mentioned in the
> > > > > > > cover letter). Adding platform device from another driver as described
> > > > > > > above would eliminate it entirely, please let us know if you want us to
> > > > > > > do that.
> > > > > > 
> > > > > > Why do I need to repeat the same as last time?
> > > > > 
> > > > > 
> > > > > Now I see that you completely ignored previous discussion and sent THE
> > > > > SAME approach.
> > > > 
> > > > Our intention is not to waste reviewers time at all. It is just a
> > > > misunderstanding on what your comment is about. Let me elaborate further
> > > > not to defend our approach here but to get a clarity so that we don't
> > > > end up in the same situation when v4 is posted.
> > > > 
> > > > https://lore.kernel.org/all/b94d8ca3-af58-4a78-9a5a-12e3db0bf75f@kernel.org/
> > > > 
> > > > You mentioned here
> > > > 
> > > > ```
> > > > To me socinfo feels even better. That way only, really only qcom devices
> > > > will execute this SMC.
> > > > ```
> > > > 
> > > > We interpreted this comment as `avoid executing this SMC on non qcom
> > > > devices`. That is exactly what we have done in the current patch. since
> > > 
> > > 
> > > So where did you use socinfo? Point me to the code.
> > > 
> > 
> > Okay, lets go a bit deep into the socinfo part. we have used
> > `soc_device_match()` API to detect if the device is qcom (`family =
> > Snapdragon`). It works. However, when we built both `socinfo` and
> > `gunyah-wdt` as modules, we do see that `gunyah-wdt` gets probed before
> > `socinfo` because the driver that registers socinfo as platform device
> > which is `smem` probe is getting delayed. As you may know `smem` device
> > gets registered by `OF` core directly before the whole platform devices
> > are populated. To make sure that any configuration works, we went with
> > `qcom,smem` based detection. This is mentioned in the cover letter, sure
> > it is a detail that can easily be lost. Now one might just say go and
> > fix probe deferral problems. The problem here is that `smem` platform
> > device creation happens differently to other devices which is leading to
> > probe deferral. I can enumerate the problem in much detail, if that
> > interests you.
> > 
> > Please help us understand what is the real concern here? we don't want
> > to call `of_find_compatible_node()` API on non qcom devices but it is
> > okay to register drivers. It is still not clear why would non qcom
> > devices/platform which care about performance load all modules that gets
> > compiled with ARM64. Needless to say it would load lots of modules and
> > register many drivers which never gets probed.
> 
> The module file will contain the devicetree compatible they match on,
> and they will only be loaded if they match a compatible on the loaded DT.
> Some modules which doesn't match on a compatible, PCI id, .... like yours
> would be loaded on __all__ arm64 platforms.
> 
> Just have a look at modinfo and the whole Linux module handling.
> 
Thank you for the details. we touched upon modalias part here [1] but I
did not know that the modules like this i.e no compatible match gets
loaded automatically by user space. Thanks for the clarification.

Thanks,
Pavan

[1]
https://lore.kernel.org/all/491de94c-e3c5-4f81-8e1a-82596413cede@quicinc.com/

