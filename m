Return-Path: <devicetree+bounces-247439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD9ECC7C6A
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4966B31678BA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9480D3491C2;
	Wed, 17 Dec 2025 13:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g+Qp6wO0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T7dvgoAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C02F346A06
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976488; cv=none; b=utAx7GA0WYHjsRJWe9X/yeHpis2OrG5FoKl3KDovqrtcswW3Vt597hPsvhJVzAuf02lNks6RUzpbs7p5SJvzaK8toB7qHLJnKHT3AZT75nsq5lA4cswZsAoiXJSR0lfG1CRpCT4Woc8yymqlvm7/RAQRhmljmECRJIwvL9gZ64s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976488; c=relaxed/simple;
	bh=A1C1DVw2kYKq12/0q2dzzBwvYL0KxPDN6q1KBWi9EjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s1Xbs7qPP2unLv5xoohimbposCZopQt7UsXV+IqRUc4pzS52fprZZedjFVIVGhuT53KpoGUqGq+FBA7GGmsRE5Xl+pnhyVuMxg1CGbbNUr33iAnrNE4Cmw60McrhZoya149wmVkd9D2cyBZpgez0dNjV8YnBDjWGGiB7sYG9oUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g+Qp6wO0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T7dvgoAS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKpgN3000646
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:01:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uLspVCdAk3EWHEmP/9FH9J41h2/QBcWk/TBEt+Di6/w=; b=g+Qp6wO0RzGOqaUg
	hAeFK1pwCExQq6JSF+9lJJqwnWhaATJIWJOQcrXtGzf19c/xenrWfjS5GMoFmNXR
	MzWCGMzr+jNWpGDPCSiZspoopyuRCWHm8qk9EAibULqLYkRKfnDkBPnvVz5PcCUA
	AGWbeR0EUnEuIBTnUP9YEJlEgvm8kA2bEHTuDKQFY000GoImLn1J/bIJAABXaEwg
	+Rtdue1qz9b44cSEgFekfbHltJzvaxLoBC0hYunaLnejh37DyiMbwaAsNAmYHED3
	V43kbGhQX82mSogSk83wy2ffTvqSliv0yC3DkPTJr6d1+OVDDjvDrm+1pBiBXhja
	hHFE8g==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n331mk9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:01:25 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-3f578b2a975so1072941fac.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765976485; x=1766581285; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uLspVCdAk3EWHEmP/9FH9J41h2/QBcWk/TBEt+Di6/w=;
        b=T7dvgoASnTyQF6U1GXKuknUYG3PUp24E5VBUMQpGHd/vDVQQ9OJHTigK37AmKTb6E9
         7kNsA9W3eoh9P8LDkvE6fofP/QAeqMocJPoIfPKcAFc3vPprZ22w9ApYXGV8pHtD1Msd
         gsQcDrfN689mAkanGmBpShDv/Q+CkjTjruCd/luR+iSfEw6MwgxovHWOcqzyZInwP1w7
         OcYV/teKGptb87s6joecydgLwGeNDL1hnKtQlJiVq9wYgewA1rv+OW3tBHbZ0vkO6ZyR
         s26YdfgBJeuZFXXwHhC6MT98tUkjXI8yrKDzDo95fXf5WXdDCMIUqZ4LiCU1ZW3BFtkN
         cQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765976485; x=1766581285;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uLspVCdAk3EWHEmP/9FH9J41h2/QBcWk/TBEt+Di6/w=;
        b=nq1RKLkkNa8veFzzdeIdKixAFaYRWonTDu7PHTVSyzeD1zpFzjgriLjSoz+MhoZTfq
         9PiWtsdQrwzXG42kD17HN4o0JuacnABSgV4RsQUnhh9O5GN2uIs4h3KzwUTn1Y1KGuN/
         up1i14aI6S7fxai3R/LmQXZju3SbmyB37qHWwXSUgal8aZbWu3grglVN955UV0YlTdXo
         TzBlkc7xlMY3KxnOTUIGTCkoTYt9hXgmu2ZhMbs2rcV621Q0/Jui85wzKqfXp64XZBmF
         6z90dtPPdcQ9+QESlB0lizCAXyrFTAQXqw2i9ZpBs3rBDjBIn0leg4mt2de3Mxg6A6ck
         DUkg==
X-Forwarded-Encrypted: i=1; AJvYcCU9yHRGzLdDrT8XERIFcs7fGdtEWU4Ql5K9JNEE8oWRnt7wv6Ms6eGPCGa74qNO33gGVVYV3/GW3Ah+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz94r3sLr3lfUeLAm5ESqRbALP1vLv/7un1MnL/fDKCbVBXZavr
	aIEZat79vkZjfxB79hWLHJ8UTlbk2MlOl3QczhgpzCUs2bkEcSyl19t1yNquwhdat5+MllLDBBU
	pCrCX9pyJYI7IUqsWqpQMo2TRv7m+OLHD/HtXBpqZkpEk7qES+b3FY9SBmmVfsHWY
X-Gm-Gg: AY/fxX78zst+GXy2M4oXezuGKUjU9D/46n3BoyuWRKxSMTFp3eZc7leow9xcio5CIUY
	1Y+HfXSPbY8WBrPU2xo2yWLcrUQdbzAwQ0hRpeR3pRP5cKRrXLnU6CR0l0HCiE2h866+jsNYChl
	rhfSdUMwT7+fhX62wnhxtvLuN3/nXcJmeIap4Q6HnG/x9nwHyMLenL0/F2EmDtZCnDSJA2vKiKs
	9MRr8Xr4uxOz37WEWAnObpVu8agkV/BvtTXa5zWVH9U4R7HQBY9/GzRHrEXV/WB3D7IDWF2LjfY
	cVwBVn81kz0FoUYbUrlZPzIkq2YQ68I4dB6JHM+HeFqcUSfuCk39sx+RKZRw7ji4B2W7hBd5FzC
	tzO/JLvu2oOp6EWHzoeyI46c03RIwXASGLJ2V+/cf+1a44SuJS+EnmzIXfu2d9Y37nA==
X-Received: by 2002:a4a:be83:0:b0:65c:f660:57c0 with SMTP id 006d021491bc7-65cf6605d27mr246378eaf.1.1765976484824;
        Wed, 17 Dec 2025 05:01:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfXurB2tcNJ3nbjzskhO5vlvJezsbyatg1yvX7UfLKzmMg1RdCpvpJB188Epc3uzojFyltZw==
X-Received: by 2002:a4a:be83:0:b0:65c:f660:57c0 with SMTP id 006d021491bc7-65cf6605d27mr246337eaf.1.1765976484138;
        Wed, 17 Dec 2025 05:01:24 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f56b6a0sm2386349a12.29.2025.12.17.05.01.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 05:01:22 -0800 (PST)
Message-ID: <1bdf4195-f344-42c0-9ee0-042291fa6f26@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 14:01:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: kaanapali: Add base QRD board
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
 <20251215-knp-dts-v4-5-1541bebeb89f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251215-knp-dts-v4-5-1541bebeb89f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwMSBTYWx0ZWRfX7o6oHHq0pcRb
 nr0I9KVtTf/O6UJZ28+nmXlZrUI5YHmkuDjTdGRiR5ghfAfCBrWhJ+ZBH2aMVkbgzmV5oKqjL9q
 F6kbw0deAzJJEhWjowhDBeXuBp3n38mefU6k5AliOR/ld+J4h4L9xktVOnhrCEslex3dLA91wzd
 PigrE/WH9i8SBKkuPuvKqYSbmspUR8eKxzeOHdURmykR8oTdgMMY7f0V7L7u8JcFByYCsUevo6Q
 Tqqk40IjD7FmGeiaOLWNoAmQjRUyChtfbSHgFf5eeNIklGvRCTivqratz87VUiQeDWwOn1a3WAy
 7NmjldNZ5lNuZn/4VdsuPRk1z71f+PotBq2IeWUpgV24xsc43qrUYgVIWRjd6gRrnqi2qdXzODC
 L0ta3Avkpw6pllTAT3+y709eWGhuiw==
X-Proofpoint-GUID: Tlspk9Q43Jlyo03lGxbN9UsGmgI_wY6d
X-Proofpoint-ORIG-GUID: Tlspk9Q43Jlyo03lGxbN9UsGmgI_wY6d
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=6942a9a5 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ii0bGMNOlrnFhgTP-T8A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170101

On 12/15/25 10:07 AM, Jingyi Wang wrote:
> Add initial support for Qualcomm Kaanapali QRD board which enables
> SD Card, UFS and booting to shell with UART console.
> 
> Written with help from Jishnu Prakash (added RPMhPD nodes), Nitin Rawat
> (added ufs) and Manish Pandey (added SD Card).
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

