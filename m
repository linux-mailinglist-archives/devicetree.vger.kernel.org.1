Return-Path: <devicetree+bounces-200159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD53AB13869
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C7CB16A1A3
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68C9822D4C5;
	Mon, 28 Jul 2025 09:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AB01ZgpX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DA9221FA1
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753696563; cv=none; b=KVx/aFGY8ldS3uxxAaK9n/ZxOuUw8L3cGNSg18nM3RLXQFG2CVizx6Vw7xWUeIMdnc7IsKuc15Cxw35+DCWJ9G8ZtSsgKq648dTikVw04yOxFp91XfxCy9Wk8iFHneG6Dz83nJmeKu7cAIXqu9S7IKA1HSV/1ii+5GYRMOWo7t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753696563; c=relaxed/simple;
	bh=v101+JVVdRGnyO1F+hI3mGw6HG5ajOkVZ4PmcXP/YGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o5sdlJ6QXkorTE7AqCFWAKvSGOhcg2+fpJhm6OOS/cwNcTZ9OqLDXwOOfCgrqbk3wkmx7a7aBsEw71YJEEL+87NlqTjkEtSup5gMWqLCJQOVrkLXBz8FESD1gyFnxholVLCE52KJr5EcPRowMqeZufoVH91oTMz6+HLB48365WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AB01ZgpX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4rl6e011349
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:56:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	97qWNmr/hvr298Xbx3iKU+H/sSf9Iuo2XWsMv/z0KYA=; b=AB01ZgpXwV9CE58v
	oMRLvClbMm583FF/GHa1lJCL0VkbsWZ0CcsxGZt4WScLucw6To6cTNnifEGQ4H7+
	YB8zm5KkXQEZ3GNLML8X/4a2SAdzz0nK+9pTxKW6DuOdAu6Q/6i+omNfQ01T2Qqp
	FwYLMATgpwyNYmxBaAotT4cNcaokx8RAat6HjuAaT7WtFEhSZvuWccqwkYWIiVEw
	/gag44mFDREH4/vYAS39IvpaL7CHTy9uQlC3lfOkLGVgJFnU/ykM2kbMuuxVglOq
	lw9Cdk3F25Sdrkxnb82uH/Ci8QjbykzP5RM0D4N8EOpM7yJk3+dKzPTpCWU+/qwg
	xS1l6g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q3xm3as-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:56:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4abd7342386so11759521cf.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753696560; x=1754301360;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=97qWNmr/hvr298Xbx3iKU+H/sSf9Iuo2XWsMv/z0KYA=;
        b=fTSvZaXh62PLunTPbCWUVlk0bnfyqQg3PbmWbwCXDNymibLeHSGN7Y8n4rVfnxv3iR
         4Tvw4INGJjglHRHXKtCpW9pX6JyGOXO7ZWhBKW/5JFPgv4FxD8n6uGPP9XvfuYsPWG0M
         1bLFkvhAleMgNhAr6MVeksKAK1q3OYnlEIcB1bKKL14dFFgGoE3L3jYDevhvp1HIIh2z
         U2n/0iVQyIDqw1Gf5j4PS2nFttqX6PzQkXjGeVZsXL0U0XHxwjKdhA4yzXYJUjxCUOYn
         DGUQQrEcCTfrUbqZrgU09GlIyZNLgYTnrCrosjMM5Axtc3YGmqr0ZhRBQh0CWD0Iynhf
         8/jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVmx8HmYdZJwL6fR0LlgSY/aRg3kBN6AwSvloqPkCRM1hKCzDbfu1lnePhH52x79fX3CdB6cJ8depd@vger.kernel.org
X-Gm-Message-State: AOJu0YzF/PuCHoQaCme5rP3HMaDiqXDXf7y+Z2GLlhb1HlCeu8Sig5aD
	LAKM9ohC18mdUN8G4bJsaVqcxe3ggQxITcRFoGz2VbPIY2m5dOQOlNRnPjUmrjEUZtsi7dk4l+x
	7iCEyTs5tYbWFXPI1qpTxMglnEfRj+GITjcpQkGFRlKz3l6buSlLchrt55TZ/mEXm
X-Gm-Gg: ASbGnctJxXrh9SI6yqOXuvCAyDriRlivaD3mIX2hqWud0qTnY3bhGHAvixDnWrs5X01
	Esax2Adoo4deBWRLJ7ChhSPHZgH1LqsBvEvlz7T1dUhAlUNfasJI9WPCnU+bLFZeFgbA6BLczjw
	itPdJb1rfXdc3xGzsxGuE3lQ+PgDttkCUNAoKKf+DLBsbysrGeRsiAqdyGTsR6SmJOyrfbsoS2u
	f4VGd6srXtyTrEodGpTUh+CMbz8C0CTA5TyB90HirJJfBVZrQhpeCueEUHF/hhbHvVVsqbRUE7N
	/I5Zy6BkLUelLg2MSR/qST3HFtg4+PqDMmFJDmFhexyeQTXVKT8z56OePZc7odJzoorvbZiUbYP
	cVX1Yq76VOpGBRgTVJQ==
X-Received: by 2002:ac8:7f16:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4ae8ef5920cmr68336221cf.7.1753696559918;
        Mon, 28 Jul 2025 02:55:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0HAJx5dftHoSRKBGKbv7hde358hLOMoAdMt9sqZhRSin7VI9+c5bS2wf7Z0CKCrsCj+V1+w==
X-Received: by 2002:ac8:7f16:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4ae8ef5920cmr68336141cf.7.1753696559325;
        Mon, 28 Jul 2025 02:55:59 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635acc99esm390087966b.115.2025.07.28.02.55.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 02:55:58 -0700 (PDT)
Message-ID: <8c59ab39-8cc3-4b00-a694-3ed970b9f7dd@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 11:55:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7280: Flatten usb controller nodes
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250728035812.2762957-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250728035812.2762957-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JovxrN4C c=1 sm=1 tr=0 ts=68874930 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=GZkaEewYkbA08GeAVZkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: jKD1eHKw-gmVvLl2bSjgah64Kv_peLbS
X-Proofpoint-GUID: jKD1eHKw-gmVvLl2bSjgah64Kv_peLbS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA3MSBTYWx0ZWRfX1AL26CpLbSIt
 1DpMZSXMmTdCdtTWdSXI1QdDeq6V5dLTknJMa+8rnpHHYr/5zv4swo21DjVs+5+PQdoqWYf8kZ+
 K6ki/fYEP8BIAkJhdXL/VJOHg1c8soUvK9bq62TkIlPLSAi6vDKGrdo1bHVWkmMKLFL4xSlsjcx
 +a3z7pOTVRTBqHVt4vdbDzEgGDkiE5lId6lQNmVETdCLeDw1nM1i24+G1B0GH6I5oILdbFfN8+I
 88dhadt4dg1OAoeLJTwgKiwNbSRZfYdXKn2aX/rT2Tq8DIUTlN95Usx5DkCA1rHWJL68OyRtUP5
 PuaCoc8ol9bcNMRoE478YjKw3z87BiMEBBFCOxC3vlQPbuunnuvRCpWBANwsAbMpf9fO2kK3GTr
 hKbsEIA3UYsbjguwcVxP2zbcdFSiWAwgti5qxv5p0pSawwAltQVuX4z9gKqCuS2HfybLgopS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=573
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280071

On 7/28/25 5:58 AM, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> # FP5

Konrad

