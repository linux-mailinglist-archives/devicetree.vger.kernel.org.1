Return-Path: <devicetree+bounces-199982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 450D8B1304B
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 18:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41C5F189226B
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 16:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F039121C18A;
	Sun, 27 Jul 2025 16:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ldZrEYD8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857B5215F5C
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753632738; cv=none; b=App158MGL3qSOG5rPWgkm5bp8GbkuPzQ5qxpD8CGduz2lxVQwJIQCZrFojD2/W3XaeK5CfzO4LOU4FCWgEnqRJ6Gl7yipawbfpW5M7IYP5cNkjOZ/2gedZC2dXHalMQVeNkC6nR0Q0tdpR5bOqZCfcCbR3NzufCFpM4UxJ4NVUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753632738; c=relaxed/simple;
	bh=RjNfiA81APDV4IT96AI7K1pjVGVOyfYFfry+faPEv90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FmXjOk93Ys+/ESFAq1etyCxxbou3kbsMjW8DOVINPbDtOAGRPNf/+EONF0zcvtaiLo0o7jHSZOmYNJMlPRnlQeu8rMC8ZA94UjGxGS7W6MC7AG2kJLg0hBjRKVEbsTjpY8n6B8jytZSNQAylaNeOP+Pzk1WhFmvODo/7vTW7iok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ldZrEYD8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RDPQaF028256
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:12:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=685vHDCtSGola1yY0CRVxCW3
	5uOqefWBiVFuzxBF1M8=; b=ldZrEYD8G3pn1c56jmZ2X5Fs48V+E/a7JXZSmxWN
	RutyLLaPFcJqhoe1a+DhgFqSAVQ3J8fZ3qY+5p9sFueyqPldAXTZiu9CPZ3GRN1V
	64c75QfcLE4nV2oRXbAn/3ZAGm1Qdra9cAXGHIUJ5sSxvcrySi/U9U54EvODa5nd
	z33uNCDZUDlgDeQizrcWfrJ8bGXTo/13c1UgjWx/OF/cORy1OT79TAw6R/fms43t
	yZiJLZEWdqOKN/p272DUhpdd+eNLl0GIugArMQGVFz+v5mIcUfH+yJkHsTjiYdID
	dpyZRUDb691/hXCwjbjSxLFavNRMo2MOITsZ3vd9kAo3hQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qj7ys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:12:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab401e333bso101416271cf.1
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 09:12:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753632729; x=1754237529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=685vHDCtSGola1yY0CRVxCW35uOqefWBiVFuzxBF1M8=;
        b=UTFlQ4DyZrFtVTht+BHFTLGUjmSFLbaV49O+JbAH40y59t+OgFjyC7VrPzGYFwpRTb
         8vX9UMFS+2yBu4ZzJDaYrPAugCE3P9TB0OZzza8b/GQfXhMU20PoTJ6UgCs9F8dSq6Lw
         yvNd/32uFOkw0T1aj4lXhXtjjf4YCZXVaaWxeSNNR+7IXiW2odvYSC1duqXO4uKQthH/
         QMWIs+kel4oLxCSGLSQDqPmk/RoHUiq9MelTVnIMMgT5GnozjrSIimlchIQuA7roD8Rk
         WPZ/XzmjREDTNOyRZN2nXKmB/m2gpvwk34m2Nei657CiRpG7rT59vVMpdD9qW7p4WBT6
         u7ng==
X-Forwarded-Encrypted: i=1; AJvYcCVYW+8cDgs9cE9mibh0Fstz188he+NmB8Bdsqj3j1naSbpi6w0TfS4Zvi/ifpCjRruJnJYg0UBpUX0h@vger.kernel.org
X-Gm-Message-State: AOJu0YwxhcRJaWV5cwKFS+vcCiX+luLEvHM2gmuodvorW+UcGuLx5p+e
	Xx+2MkTrKktqntDH424s/a2IiYW+BPFaRwHeorGnTk9P5wQF4ZCGBGJ5gAeQyHoGy5+U4I1l2QP
	Xepv/cbTivBSqGwfUBGy6b6nrTLAasBZES6HO/Wxd097DTxiS4OLBKm3DVNRRQlfF
X-Gm-Gg: ASbGncunOJtFULxjD26LMqklnvpYP6ikFf9bXnjr6HSgDGr34Rhu/+jwuVDks2qSc6u
	Pgmxuy7B5+3p9Z6JUqrUirZqqpkEC9iUfAD6P3PFRM7olniAxDcZD83BnNRnaq7BrIBI6olm7Yj
	tPwhrLzbDP0hbmn45vmOb1kejt+CAn6g0d1s+C74cqqG4yyV0JGh3gIieiPR+owxZwg7294MqJj
	3WKoL01KMkhjVStkMISeo7mpBXhLKIYmxwtYKBlylXZVQlnSZU6X9IGkRedjJluTC/KOOghWoB4
	oS8FbI7F9lOXcFZ61mtnW3c9TYnmzlltStlKoiRgPWob/XA/n87vjDr7jQfXa6KZDVkh+BxT2Es
	tNyfiM0dsx8OpPmdvZngHMBqoHK4yPwcXpCXoPZDZN3zMT7BeQ5ff
X-Received: by 2002:ad4:596f:0:b0:706:f190:f2ec with SMTP id 6a1803df08f44-70713d9c3b0mr193045776d6.19.1753632728953;
        Sun, 27 Jul 2025 09:12:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrgOtZO/BrhsYDwqI7MpuwYvF38Y6kA2ThfIBA0C1aFDjGfvO0v6UznSa+ysUHy7ifVbV1JQ==
X-Received: by 2002:ad4:596f:0:b0:706:f190:f2ec with SMTP id 6a1803df08f44-70713d9c3b0mr193045336d6.19.1753632728412;
        Sun, 27 Jul 2025 09:12:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f407b4b3sm8601681fa.13.2025.07.27.09.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 09:12:05 -0700 (PDT)
Date: Sun, 27 Jul 2025 19:12:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, srini@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
Message-ID: <6f43g2ywh26olthehlxmstnzfb3rrd3gavyzvmuad44w6bzvhk@vuphps5i577a>
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
 <276b7977-45d9-4b37-a4f5-1c65802ac267@oss.qualcomm.com>
 <mwhxikivaxtz5px5e7jkqtuuk2iz457fy5drsnaj32j4o5qqk6@hwkcjso4jpsp>
 <8b3abd1a-4246-485c-9f2b-63ee37ef808c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b3abd1a-4246-485c-9f2b-63ee37ef808c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDE0NCBTYWx0ZWRfXxtNOg83u5eox
 f1ZfuganbTdzBSKx7KVs3XQU/tKsOHbF2Q1c/o56DaKTSgow09hbIO63RYdO8vw6aTz+F6m4c0W
 gT6E/i+ziRP6F5OXcpAFCyu3k6VoIaR11V5rymVdiJS1XUMGC2UZCloUlLNkvtBu7/co/IEwqM/
 o/Uek2Kb1zB0y41znJK7gAoMAnmxHwUHKyfpo9cl9GtKFm40O6NKcbgcCBg/gFRajiu+t6npIex
 mpXKL3AUfxRtMp0e8B1ojtQMsqwNmJeKDO9H5dMnCK9J07Nk2PQXXYOq8cDXqV4eKhHDLeev4HT
 F+YAC2ejD6P3n+dMujqBbHWEk38eulm02lAEWlc/TT70rcy2on3l1PsaSa6UtCWjGqeIcBvpS/K
 BpNyczPRH6xYRlhQvN2fp26STUlMVtnUrDG2hk5kaE9d7MQRGxeaoIAxQp8ZNmGS7gTNmedh
X-Proofpoint-ORIG-GUID: 1mNYQHGu2DZrPKov6z0eeXSqv2f1VMNY
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=68864fda cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=hECnEToTbSFRC2ly_LMA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 1mNYQHGu2DZrPKov6z0eeXSqv2f1VMNY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=797 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270144

On Sun, Jul 27, 2025 at 12:25:12PM +0100, Srinivas Kandagatla wrote:
> On 7/24/25 3:24 PM, Dmitry Baryshkov wrote:
> > On Thu, Jul 24, 2025 at 03:31:50PM +0200, Konrad Dybcio wrote:
> >> On 7/24/25 3:28 PM, srinivas.kandagatla@oss.qualcomm.com wrote:
> >>> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> >>>
> >>> Qcom Slimbus controller driver is totally unused and dead code, there is
> >>> no point in keeping this driver in the kernel without users.
> >>>
> >>> This patch removes the driver along with device tree bindings.
> >>>
> >>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> >>> ---
> >>
> >> I *thiiink* this is apq806x code, with 8974 adopting the new hw.
> >>
> >> +Dmitry, does you computer history museum require this driver?
> > 
> > I never had time to try enabling audio on IFC6410 nor Nexus 7. But if
> > the driver would be actually useable there, I'd prefer to keep it.
> TBH, I have never verified this in full audio use case in any of the
> qcom platforms. This driver has been unused since it was originally
> added in 2017. AFAIU, no one is using this lets remove this now, Am
> happy to take it back if someone has managed to test this.


Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

