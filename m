Return-Path: <devicetree+bounces-187302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B162ADF73A
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC9A34A37CF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C39821ABD0;
	Wed, 18 Jun 2025 19:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XnM2iGOb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD7621A421
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750276256; cv=none; b=nou9jxRDGScvEDn9C6f9D5Ua5T47t81+dlUjG+SI+C+D6KlZ+3+PVcyCtMNAlmpPCdzAx8M4mNWQ1sukjDLXeFL2IJKH6nX3c1Bocwmki19W1bJUorgTMLg8vUvIvyFOTAuuqoLGaXDBcCh1hPnkfCyhnPWhBDJLFxV/vnshug0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750276256; c=relaxed/simple;
	bh=Abe84Q55V8uLaOGPFRiyP7NZWpfQt9lsxHaIzy2vJKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HCAtNemGT4nbCcaN/nLIKbkf5sO5noP7vQgh72gt0AAImK0M+W2dQzmrA37UxiyTgH+T1a5TcvPA7L0dhAhEsExUZYJ9pZ6g5X+7OVZS0/MhPsYDgjoJ0NzC6jifecaVSD3ULc+mygQ7dcb6cszc8AnrQYmI1dav98H55I5km7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XnM2iGOb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IHtKSD023298
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FOzsOSYkCLW2ggvd0CZgtgGnw4BaefQGhIvMT/TEkjU=; b=XnM2iGObMqoEo6lf
	g2scR+b50htBei+ddhijz7lFpT6jkC+CUE9B8IXrQbeuRwAphjqxH4gyAzl36zGg
	EAXjXw8FnlhtfQzmXSoWBzc81DDcaiqBVYKs8qMwUCxRrMqxAweXcq+sm50ESf9a
	Su8mBE6j99asU3sNrJfLizPOqrstkfar1EqGiludaRf4yY9d1b4KQunRbfW867qY
	AQi5kkjx4Mo5EXhKRbevfj3jIroX9JknaAQS5bfQnsPadSdegb311jv401rYl1Gj
	XlMvCgq3IV7366lqZy2VYC6qOnWdCem0hX6XMnpoLK3cxzegaOrr/UxxL42IY1C1
	A2QL+g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h9ddjj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d09a3b806aso1084985a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:50:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750276252; x=1750881052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FOzsOSYkCLW2ggvd0CZgtgGnw4BaefQGhIvMT/TEkjU=;
        b=kcQK4gOTSCA6WLsUFjxx5xRVo3/NiYJPBoV1P2lbckwzRRpIpjkn/pca5rL4FhsNjl
         e/DP/pDo/RePoWEAwGrh6emQptUxm4TuldCed5BVPS6ngKncJMGJG9QhK0OBulKRPek4
         44nTPf3esFhNRiFLHSvkdsPn1vQqjCDL0kocEue39Ofnw/+AYapfKvKC87MMufxftTUY
         WTmzr4oCHPEqF0dgsVhUrmxMzr/xFLzq/I4awy3MfLpgIIywTTOrALvz4l0vVvTEAljY
         HyphnG7kheib+diyxTwFsAOi6uiZBmfZV/PQraZHvdjHi4jp+4wB6bcgOWpp20CX/2mz
         P7wA==
X-Forwarded-Encrypted: i=1; AJvYcCXXp+fPtPAhiho1lSgyDkHLHUbSJMVKzZ6H4BGWcUVZMP/sRM+9sINxKDaVIfMNag3BHaYPPUImgdYA@vger.kernel.org
X-Gm-Message-State: AOJu0YzDl1g1sj55unJ+TlouJUfNn3HC1jz7JWi2iJUnH7gYaq/OrVFk
	9tgcWd7vUN7/OeIgEJ6PdfoCRB5ZgOkFk6SexfDNyzsXFE18p5HKwOd7aOWRLJayK1KmtdKBw8b
	XOevzgF3GlMJ/1DQ+ETEXl9VBBCP940bcFwhNzr01rUBfmr0n1aXdu48j0fnlLE34
X-Gm-Gg: ASbGnct+725zrN9mzZmd9LfyTP0sBsvfVbn1iVOpkIlp3lUaqyyb0b6Y6sxQNHAnHe8
	b8U77HIyIj3UteHQ0QGejEcUlX9izjXqYfR6XyWv7F/oT31aRKMiKRqHeKQVxKhF2Opbb/kotY9
	//JCq2v6w6/cTnfON53fJBzpeAIbWvmth/+87HxMzrafyb5YTzejEmi4erS2hEzLcSRvRbCsaDg
	DCyNKZsRxnyqzhX3sR380Olx7ADfBSfix2Y9ECpSVAlJ+R42x3UgxpW4oADN21PgopgjiDbbKkf
	J1Px0oYDobm6sMnkPSsJHkcuxNvY3yfPEQRc6ChDbWxSY0JRYG+4Inrtm3MddvuMY4J0ekE90Ag
	mfwY=
X-Received: by 2002:a05:620a:4307:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d3f1b5439cmr37309285a.8.1750276252372;
        Wed, 18 Jun 2025 12:50:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKmaXk+Vmkvjg46kiwK/r2FLExfJoQV8V595azEx4ecLa7oANL+iNpPolnQOfeL6VLJxOtmQ==
X-Received: by 2002:a05:620a:4307:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d3f1b5439cmr37308185a.8.1750276251956;
        Wed, 18 Jun 2025 12:50:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adf8b393ea8sm966523166b.159.2025.06.18.12.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 12:50:51 -0700 (PDT)
Message-ID: <f4ee6c98-3071-4121-bd6b-a41959f7f5ef@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 21:50:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sar2130p: use defines for DSI PHY
 clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
 <20250618-sar2130p-fix-mdss-v1-3-78c2fb9e9fba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250618-sar2130p-fix-mdss-v1-3-78c2fb9e9fba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: y0IcWB-L8QPSYbrxzRMotTTZO0Prde2P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE2OCBTYWx0ZWRfX3tHEucI6QQWk
 u2/R1q5TGareH/OpmF4CwkznZA2Cey0E3jJl6qfItarXOM1unpMdRxBBfy6oCZ5z+4eytLOEUI8
 7fLUnyGPB6c0O/MApqTN/sYQwkPfvVI9/XF130TTVoMsJSGDXpDU6VED9I2a+XIZM8J0ywVu4MP
 abHHPFhzGsow5nhySPfrM6Br3Q3wcPdL9/WSd94o/Rwsa9dgIKbL72d2RxyRqik5oVGRDArAsho
 +Txm6jWrQ4q6s7aVUoOkk82A7cjGdD1LOCfFusavTpxcaSDOy2hRzaLSQRCNqQuN2T3Awa0k7sX
 2X0fkH0WQWnJpRDBdvVcx97PdbkjN6/Do8bPuNq6HnmwWTpBnATEIF8XgwM2a5p4Dd0CkLa36kI
 1lu7mBk2McwUTwgobp//dQ0QI7rrygKOurcFEuIbzQs7KPXUg4hVLXApMJzvOFzN2SevKOE6
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=6853189d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=FoSyCDDHJe3iGoLm4rcA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: y0IcWB-L8QPSYbrxzRMotTTZO0Prde2P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=461
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506180168

On 6/18/25 7:49 PM, Dmitry Baryshkov wrote:
> Use defined IDs to reference DSI PHY clocks instead of using raw
> numbers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

