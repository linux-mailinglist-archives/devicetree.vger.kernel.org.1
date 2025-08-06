Return-Path: <devicetree+bounces-202151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1640BB1C392
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 11:42:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB29A186EBB
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 09:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2A728A402;
	Wed,  6 Aug 2025 09:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dcO/BKs2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E0289E3D
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 09:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754473337; cv=none; b=f4OYIQ5Wn0SNz1C+2t760cc5bT6QHiR3ATsySxNpf3f9GGELwrMNQimpFD7Ji0LRNzvKtgGisQ4bLydUBr1aQrW4piZS2ljdXi6s4VIKKsYNY33DFJzWg51u5m6EMRldvbgwroBCTQpqeE5RCrnRgzbTefcHfz5Wtxp5geoQBdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754473337; c=relaxed/simple;
	bh=gw/XakQa8gqbrdGE5wYENtsocDLSJnH77c1LBGUGarA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=daG7ahm5mGRXYc2V0s8aa7m+sDn/dMcIwKufv2gmHCzX4UnGk9gr1Q2pmMMfwmXw2xXswLBQrualMYsVNA4gMwvx5OkS/wryNklpbB1+JmQNBAWRSD+DwSwypQU0J/2vgp0R4QFiVpvf3r+6iQrBkpUy+ccl3BjhEGR6I4gQnA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dcO/BKs2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5766R7r7019336
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 09:42:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V9Ngevlyk8k8X/tpRuupzi9AfwGVf7XUwxRKsTAPODE=; b=dcO/BKs2Qt8dLR5R
	L10GWFn6tx32PPLdVnajQFaH8v3B5ecnnZLdlPLNVOlx/vsvg66VJJOGHE0eFvUX
	OZ+0FE0zVj2Tg8g0dl0jgPBOHbSKsISx3WKFmd3BDN8f3D2vTD2+m/5NH2W3pzbw
	QxZiA9liXvczQbpdJPYRLqaQ7BaB4OPxsAJVNF9BikJbWLpxHjPo+VvSB1rbZMof
	/yRaNfKnYKYxBZm0o4HDCHje+14qP6Jdpk4060JRI95ZB7Sw1HVFyRxDvhv2KYrk
	1BHYwERFLtLQ2NI/3oGNw0DJau036nl3fAxK/v4/TR5z5FailqMEv1F7tguwH2cV
	PYsxrw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy6t67u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 09:42:15 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4aef8afd26bso21283151cf.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 02:42:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754473334; x=1755078134;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V9Ngevlyk8k8X/tpRuupzi9AfwGVf7XUwxRKsTAPODE=;
        b=b1R3Qc7XO9nd4VMBRuKRy87slfu7haB06dktBI/ejJUqABNeKtUteWm39a26GQuUx5
         m1VjeIcRw3NSu+dWaEHie4PbykTrIjX8nkioRgdgxVUD1DLNk5APxG5C/OCAgnkLR5/r
         Defnn2vfmi8AQGLnj0kMSCETsVjcfEPuxuBsa7tHyKJRNK7aoh/aCpiPQmO8ZI5wocu+
         4OzGI5+pyz2o5qerft0Nk9U0RZKOH70N+gCbpoLvjDdlu2xMP0yavAnga8NKN3OysJgg
         GrtTkJPncTgPs0g60CQYdg7Jk09FsT785rAzjDbh/aBgO+DKa7VG/4NB637ejqfCYrAF
         PYXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvQH2heRYfPrDA76BBvJ/8MOm+y5Ej7T+a/YeS5HKSR8J5nj34Y8wr8HLoCFB3+2T+iwEKeuZH4Y3b@vger.kernel.org
X-Gm-Message-State: AOJu0YxWd9GcbtaGC5EjoU5XzsOGOsAQjq0sj5kEK9nQ3zIszRKeZOsu
	UnjoFCjtCPSv4A8jGfY5SEvmzyIn4+O7CipIG1hR1gwJVV6wCxek5qM/XyQ5JtxkWs5NcaOIteT
	3ddsGV35K0iIuw6KY9Fnn17LdbZ81JGWxAa+UMy3dp4pALewEE9X51KtOVKoxn6O5
X-Gm-Gg: ASbGnctNr4xzIEfLN9RE/Qr8Txa6Q7jgQutH28Q6+Ql9iTgh5KctPRgpu9hupymueR6
	NBi4OOuMu7uq0Fn0vVnaQBt+3OiYtcpGY6elBwMJO59Ngm8kIqH1BFQ9cK2VUpENb1FjHC2qlSY
	MKO7fNnrBdVtrSSLwYg+hueFd+QgWW+b1ZKeMJVSyzMZJKVo5dDpJRJwxTH/sI0f+/UDfdUZYC6
	BEF2ePVbQl1Bvk2akipP6QsThouGoq5fJcq5B6g5S8+o8gwipWkxBPEcw+WnL9TttD2HaFv6kqR
	7wwdzx4nUDl+3HTJIpODoFz0G8598zRxHT6fa22lJhGNUymaUomXgLlxG5WVX29eTv+j0N2XErO
	LscOjuk61ZnVPU7Z4WA==
X-Received: by 2002:a05:620a:4001:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7e814d9d48fmr156053185a.2.1754473333991;
        Wed, 06 Aug 2025 02:42:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPRrggUJ01puIkv/R9C1gEp7UiwZiVDu3B1Vp57Vmzv05vWwTbj1vfe7NY+EM3xP5Y3a8jZg==
X-Received: by 2002:a05:620a:4001:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7e814d9d48fmr156051685a.2.1754473333435;
        Wed, 06 Aug 2025 02:42:13 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91ee3c1f7sm1006103066b.68.2025.08.06.02.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 02:42:12 -0700 (PDT)
Message-ID: <5da37b49-8daf-47ac-9564-b2aec4384087@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 11:42:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display
 Port
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250806-dts_qcs8300-v5-0-60c554ec3974@quicinc.com>
 <20250806-dts_qcs8300-v5-2-60c554ec3974@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806-dts_qcs8300-v5-2-60c554ec3974@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: SUs1JLVhbfSFUnnPi0SoUgZTuI6kPI9t
X-Proofpoint-GUID: SUs1JLVhbfSFUnnPi0SoUgZTuI6kPI9t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX8kGLWiY4k/aQ
 7PhuG0af2LN10NnHHtvryCnduGMWH/f04NBhnahWYuPPa6YPAXXqtgO6wHHNslrn3qt719oFn7T
 NTm5sBdx6++8AyYCbZrRUWCQKeuwKm70yKoFvvb80xVUaPQXw6RTmb8GlGbzDfkwCmZ/hNEOjrR
 s/UU+0mHvIVjproWuVGO+U4hOvPuic3OPkbsEBoWDHkc/r/Ax5ytL3LeZiKuCdmvMDKWitCw/yB
 SRf4EQ/9F2nDaYevZieqZbRAJaVb7egzAGaNkTmb2ai2eEWC2oVY5916dhVYdSiBmhlAB14tB+Z
 KC9eGercGjNazQsckGMLNaiBgEgYhUOflOfZ9YbpQ6Fex6cWj4gGVnpB5l9EaINRgJzMaqY3sQx
 m0Mkt9pu
X-Authority-Analysis: v=2.4 cv=LNVmQIW9 c=1 sm=1 tr=0 ts=68932377 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ejZKuhsRmfo8bG81SBcA:9 a=QEXdDO2ut3YA:10 a=PYnG6sVWyDQA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/6/25 9:12 AM, Yongxing Mou wrote:
> Enable DPTX0 along with their corresponding PHYs for
> qcs8300-ride platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

