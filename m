Return-Path: <devicetree+bounces-258063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHN/HkgucWmcfAAAu9opvQ
	(envelope-from <devicetree+bounces-258063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:51:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D385C92C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:51:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 46000829B68
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A51B352C2D;
	Wed, 21 Jan 2026 17:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RxIJUbuN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h1hmfkM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2BE33987A
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014810; cv=none; b=Xp5TYV0Ho5zRozue7fjM06l9cdSGIyaHjuY5wMJ5rxOz1NPnPbqouHdNUKPQLg/HEOCgLQVSTFzWGjm4mmmNcxKBjdZ5p+CU8h6JAHrS20grMpcPeGXZlIYk2D4+uFbDN696GvwV/k/sBn8JgH/hcATZfJhTiDa3Q/riqbFwxaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014810; c=relaxed/simple;
	bh=Rq19kCLiLbjgLUascNi3uFHr/okLMD+Mut214LcoebU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r6PYAbrt4GjW66uZzSdeN+HUqFsgdFCVHRIgUgxLvVX53N1yFymrMxR/tMyQVv6mhFM8eq6+zmiLveA8xlSPg4lKrwPq6nTftHWMHlls535SnSYE2h1ASmVmEt1YYXNV5YoNCBUJibur9AVpyrusV9fBYOf/pnYZbk1Juki1tKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RxIJUbuN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h1hmfkM6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9iXqV3481490
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:00:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ib7kzlkMpIuGdkzj3jtoMhVY/pgx3vVg09JVTXE93K8=; b=RxIJUbuN5E5tMSZX
	qv64isG/bBFQzWvAci2JxYT0lrGHH4+8mRte9Tmlx97SLRJk4xCKhkRhJrc/4MLZ
	2VQT4rMqYubJL2zuDbX3u9Ksjbe/SA8pZcwuu9s2HvbSrJ824zWUgKfvGgxt176a
	1ezZk3ozn0GEIsVuQCEO/+ktUZ5ozA0V/53Fc2Gi3tXV24tY2397KoOf+T1MuNaC
	i2NqtPq3vFzAvT4KmtEDVakw5ZrKQx2TFLI7+3yc6ItVbt+8B0DfkymY/42xDpgl
	/7Vs9CBP8kD5/lwCETrEMWoBUuFrr/bbfpKfdGBdN7Za4YwEd0/ScWChFsqgtot4
	UlyvKA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btvef1fpr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:00:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c536c9d2f7so1358885a.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769014807; x=1769619607; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ib7kzlkMpIuGdkzj3jtoMhVY/pgx3vVg09JVTXE93K8=;
        b=h1hmfkM6/8Y92FxSQfwlDOuLtAzyR0jxa0/j6r5+I8s1JkBzRFnzyCET22i6QEbTny
         LfKTGYtB5NHnvHD3rHyswWL7m3meyRbK9ziH9hkIk/mq52vu6QF0fTWTUSVO3V5m++up
         mQC+H0OJocyMJSQQQOykAdlwL+XGdM+GQNOOfK3kp1cSeO27rKDynh+oN3x89A2/WQNd
         IeJPzV5LRJzgo1v/UtDPRkph3Z4TuOE4Agqd4mkJKM1hDufitVrLqHDNxBruVRBH+x1a
         kfIAX79tWCJjBwjQGdQgLcsclLBNkFGBlbOemIiGnezihv4uazqmCGtK/pwGhc/yJua0
         eTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769014807; x=1769619607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ib7kzlkMpIuGdkzj3jtoMhVY/pgx3vVg09JVTXE93K8=;
        b=pckOm2Vctb1Pl6ONXgiWDAmtKnoslPRDkcHXdrlnwFaznrM3XXIvqh3CQu7e2GiGCF
         kG+r53oItxuTuwIhv7qK04AMUOO4MqPEhU6kSMiIldVOyUN0Lv7VhjqxtyP7zpt28MN5
         okHby+zjLiix/K+chcQItk8PmV5KucNWh0+4clgBJhxStFIHH2XqbCZR/AEriynyD235
         BOY5i+ndAfpE60hI2cgUadk2sFoLdJw4BDLN8x4kQ5IqZnt+ojyOfs3SGre0UZb/116W
         ssxuJv6ClxyH4z2wfD1ZDLQMD7JL85+ByrbGp+pCR2jGwd0LPq31skC7/quiEfD9o0SE
         xNSg==
X-Forwarded-Encrypted: i=1; AJvYcCXZNsgGyZMNlDiaxr4DjMKXQXkR5Wy4znDtpUN/m9eFkM9jtQQSFRTD6Pvqv7Q7BqzesTm4F8I5LQ2m@vger.kernel.org
X-Gm-Message-State: AOJu0YwVK+/SWk+Xj/SlOIkj0jT4MfHlnhnY5S/kHB5RuEnurp1Isfjt
	ToFa6vFVIg6ZzCS6+mTdIZZLqK359hmmIdWvVteVufwzc8FK29tfBTAvwiHHnlJzc2vGWb6697+
	62wXb54uaK1jQPQ0OMZyZm4Ve/kE84LuA/1YhFdQM2k1Mq+lW0ijuoDQNtiwUD0Do
X-Gm-Gg: AZuq6aL8Y+u2A9akgwf/aFV6OUhRSWXMMY7O/Yh5cQ+Sp7WUNn5MpkNazLycp7tt8Lw
	qLqIJxa7nng6ZMgVTuk3sEfvNvCRDrer4dOhlbHrvyMylV0CmtZ3/bIYZkvc/Lg2iKGc1oRuKug
	IiC+pYvTvvESOvF7KREBmUC8ybvnPlKjmBvviBUDKOJGMOGZhNuHoZCVg1vnkW2KE1qEkDxxRzU
	wKbv6bDWsh/+YWXcD/tk4o8+RCccIotuKu31KLwTvtNX3xlwfG/qz6yFK4oz3ydwWKXaXnBCSCJ
	XEZ+HeN4RT6Qnk3MCgT10vFxQrMWen2vDW5+/AeiIgraGx2EwI7rRk0Q3hYx6MWwVdZKoi4gvhl
	ZwjmOXWt3tnVz68YBkW9r+hpVXTfD6UnoLTFe3jxAPMmntKFqq8GLJe714zs/oeti9gY=
X-Received: by 2002:a05:620a:1995:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c6a6799061mr1771910185a.7.1769014806036;
        Wed, 21 Jan 2026 09:00:06 -0800 (PST)
X-Received: by 2002:a05:620a:1995:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c6a6799061mr1771905485a.7.1769014805404;
        Wed, 21 Jan 2026 09:00:05 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a192b6sm1582377366b.59.2026.01.21.09.00.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 09:00:04 -0800 (PST)
Message-ID: <be5d67d3-1909-4a05-a4b4-c9efae4ba911@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 18:00:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] drm/msm/a8xx: Add UBWC v6 support
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20260121-kaana-gpu-support-v5-1-984848af12e4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121-kaana-gpu-support-v5-1-984848af12e4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: LEGiGlZTVBr4cWdfNI5YCZS1jdkDWarv
X-Proofpoint-ORIG-GUID: LEGiGlZTVBr4cWdfNI5YCZS1jdkDWarv
X-Authority-Analysis: v=2.4 cv=CYgFJbrl c=1 sm=1 tr=0 ts=69710617 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=I3w_ynYpeOqJdckr6GkA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDE0MyBTYWx0ZWRfX+KX6rsRREhDl
 H1qAKUqLeE0NO98fRoUij0koPRkXitBokLq4gETo2lTT+fa3LRIQR+LZWL4eWSYg1rX7nYWppm2
 DXUswsPrcr76K1c1359farXXRSYWRAUvk/bSSDWNJqFqDgGZwxtfBRkLSc6xb2NMjvfSO9OP7RA
 wFOgbeFQg+j5PUY2X9qOOdJfoUWoTRaniVAEdOn/XX9yiZzCbH2toPHb0mn9+nYyHlWrfiy4HK7
 EeXGnjJBcsX+6s5Top3QL5SUenlctgGPtbFLLaAAMs7PhTPKToHEA3I/gBilnCK6FZ+9ilO5xSs
 PUqwWutkfe1iBhYbHv7ZOSbhCxgDmHjV+U5X7/cf6ZikR9pMPPtPHOElLfO3Peqz23QCclKUzAj
 NiAtQKbEQaRoQEfJGXgsasFiX6KlHwwiNWOEhsxpclt6KShNYkMj5ihMzBKtKbFsiqIgG6c7Crn
 YrV3uRUuHhU856etk0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210143
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[30];
	TAGGED_FROM(0.00)[bounces-258063-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,marek.ca,cosmicpenguin.net,arm.com,8bytes.org,linux.intel.com,suse.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 21D385C92C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 5:01 PM, Akhil P Oommen wrote:
> Adreno 840 GPU supports UBWC v6. Add support for this.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
> << Trimmed the cover letter since b4 folds it into the single patch >>
> 
> This series adds the A8xx HWL along with Adreno 840 GPU support to the
> drm-msm driver. A8x is the next generation in the Adreno family,
> featuring a significant hardware design change. A major update to the
> design is the introduction of 'Slice' architecture. Slices are sort of
> mini-GPUs within the GPU which are more independent in processing Graphics
> and compute workloads. Also, in addition to the BV and BR pipe we saw in
> A7x, CP has more concurrency with additional pipes.
> 
> The single pending patch in this series in now ready to pick up into
> the msm-next.
> ---
> Changes in v5:
> - Dropped merged patches
> - Rebased on top of msm-next tip
> - Link to v4: https://lore.kernel.org/r/20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com
> ---
>  drivers/gpu/drm/msm/adreno/a8xx_gpu.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> index 30de078e9dfd..5a320f5bde41 100644
> --- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> @@ -276,6 +276,10 @@ static void a8xx_set_ubwc_config(struct msm_gpu *gpu)
>  	u8 uavflagprd_inv = 2;
>  
>  	switch (ubwc_version) {
> +	case UBWC_6_0:
> +		yuvnotcomptofc = true;
> +		mode = 5;

Downstream agrees (and they do a better job of using field_xyz than
us this time around, I'm impressed)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


