Return-Path: <devicetree+bounces-229261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6597BBF55F2
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:56:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 174F23B2D7D
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33512329C4A;
	Tue, 21 Oct 2025 08:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="el53CvSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF2B2777FC
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761036973; cv=none; b=q+hhNZGD8WhRLTYXlcWzjgf6pBYQoboPsUD3/GN/ryLgUgY8+coNIhKM7plcrCp92Z6L4IjLBoQ8wT48mYStDfYfg0Q1+NLibYnleRwAi4W4QVzqfKstB58mx6nE3kvJarpWF7D4GyToCR6jqTkvYA2mlHHTuFzmldhEVMGsKpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761036973; c=relaxed/simple;
	bh=p1HMLQCAtIqg0gUPotjCohNGE4o5HyZj/UP6M6hYo+A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gojjY8QgoWS2z7xEOVgAZYBY9Y1cHrR6gxSrxQm9ODNeq2aQqVO/r/lnXm3M6h/Vv1NXtjClN4cIZqTJiwQBA2XSFJjh++Yf0frnPTPAVP7H603ujdCsbMdCI/0Mu3jTRdkbNQTPYLH+Fbf34sdXbbqb4ukFVJC51flVMgNiAMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=el53CvSw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59L8MSW9029400
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:56:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gPkYKty+NWUtDKsrjdBKt0tpiMSu2WxnR7dA7Llh8jc=; b=el53CvSw1pdSqS7z
	6YzG+RHH5ma05ImFxOFA1bfe+NPfH8OAQUR77mLGhAbqkg+X+22lB51L0EtmgTrA
	Q1kEzFMVsZd4ogv88YXlwCzRFZJSmR4wlVqFQJNL7/P4ck4UVMT2pnb+AaJUmQua
	5nC/0koNF3dqAjIPvryzkkGGkksiMRzBJzYD5jGUyp4v484WypVKweauPP1Z9E6N
	VN632yiSGRQ7wPh2mI0VKZfUjAS378Rs6SPE6hpDpTYtyUcNFjsYdB6b6W5w3c1Q
	IbC+yHEsgvdsCGGEoZSkxygzaT7YvWgZeQN6lexm3NsTzzMSm+HYNjwYpZ7C6szM
	BkZYuw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49wswntbp4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:56:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-89083a0e150so154677885a.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 01:56:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761036969; x=1761641769;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gPkYKty+NWUtDKsrjdBKt0tpiMSu2WxnR7dA7Llh8jc=;
        b=SOIBfnze1Sts5wn1Q0G5kaMsT3VMXki8FOl7At/r+LNHFb+7qy8Ks3kabQbKsDEHEv
         Xh60fOW19YadluOhw+44bBmdoJ50WpFYCxcnr/zNaSGb4qo8yd84ieW7/HgGOtSye8is
         xtfAzzcTLj66OGvoF0Hp6c8Izfqr2Sp6I3xo6JlKxhv8b9t6f28XFINDM6jM+yQtddHu
         JBlmlLbj9INtcvzPwYDJD7WP8AzShWTDUTv2/rVrdHzInIACFuf+kVHlQLJ0BdnWSw84
         MM2Wvu7qalguaeGrz46OEV/uvbAwDRuOoR32Gp3uMeChoeUPniBZstK4taIHTXezTgvz
         YU3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUPr2jImyxy6zuMvX921XkqG+ZK+HM1Qh+4/l+88ySi1GNnZ1WuLmPun1mEL5O3c5Ypc5xrzRdobh2J@vger.kernel.org
X-Gm-Message-State: AOJu0YxrJ034tYTlI06UER7jUtMCqxVZ3mCTfxMTho+xdBoRwPJuCp4L
	IgRRCx7tTK/x2+PnQYiyt7+fNiAKhNs5fmnGRwa9LgECay2eMRUrRUf3xWvnix8+dxFNubUOSUS
	qRFKRYnM8GcLyf1mycgNTV1gN4DadvItUNiFLzDD41+crgHNpbYvmUaQtDWmFvpBK
X-Gm-Gg: ASbGnctQ6cuYMeFIqisNvOzgxmnmDYcRqaJB2TJnTQRnfel2yto7Gcs0kufvTKMbcVo
	NOT+z34b7cuxVXo9pFJs6t3sUNozbPAItan+WaSLfrGC1XUNieVlNYt8Yg+iRcG3BhKLNTuIHK6
	qJOp2A0CMW4i8bk0g4ORaDhZoy4H6nscSYA+zFVTw9kb+sYrNcaCxi2i/3TU/AXbHWvQr48G5wb
	0DCEZQdGF29Btk6Orup0Ixln3tAquy5IcOuXLC7NILLj1LQ35uguKk+wXLLHwY7uaLiKcBA1Me4
	CdbWavA5wZ3my/ZZftVVh29jmtW1jOlZQ0dWgr1yhG6iNs3J5jKlPECozrbZQSQ7VYzuP20SYDj
	cvOoOI6ub2CunuF8CVDLGJ09Nxz4OX7th7qJOZ5NrXeTTDfhzHjnLNSpK
X-Received: by 2002:a05:622a:245:b0:4e8:97b1:2f00 with SMTP id d75a77b69052e-4e89d07b665mr125492481cf.0.1761036969359;
        Tue, 21 Oct 2025 01:56:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwBLXqTI6f+Bzi2R6wECJZwkz+yvm9ue+XiJIYIwB6PxHU0f52M5+P+xVtyMO9HaSWzM+hQA==
X-Received: by 2002:a05:622a:245:b0:4e8:97b1:2f00 with SMTP id d75a77b69052e-4e89d07b665mr125492291cf.0.1761036968808;
        Tue, 21 Oct 2025 01:56:08 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e89713ffsm1022412766b.36.2025.10.21.01.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 01:56:08 -0700 (PDT)
Message-ID: <f284c279-a283-4cae-b405-02d7a0c44348@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 10:56:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: Define guard pages within the
 rmtfs region
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Paul Sajna <sajattack@postmarketos.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251020-sdm845-use-guard-pages-v1-1-64d714f8bd73@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251020-sdm845-use-guard-pages-v1-1-64d714f8bd73@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1XDnXUm7gO3lFu59rMhEck5bUDDkXuOL
X-Authority-Analysis: v=2.4 cv=Maxhep/f c=1 sm=1 tr=0 ts=68f74aaa cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WIiUZGVdasX2BrCbfdgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 1XDnXUm7gO3lFu59rMhEck5bUDDkXuOL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIwMDE0OCBTYWx0ZWRfXw3iA7l4dkWBU
 d50Zg978ALtCqumovYT+YbtMrhPAE7Qxi1+eJ3WlZSc3CK2ewWovxFRD5yiEvyLlm8VJHPRphPT
 MHDFGfcFMXeqaUX50sl70wdflMW7wVnic43nyOhsJbfmd8PzsxEC6Hdp1zmqUB24LStdCU1dK/B
 yc0rWcd442mk4BsTQO8Ai968hXL5GrdsUuhKuNdDUbqZW4+MXGnP+CZc/xC+i7X2aIrx4TUlZo0
 dr99vTdsqIUQmTpr5wGb1DpsiX3kQYQhzpWmhu+wwd1RsjTx2ByKJIPrrccCK65tkMqkZ1v7rQg
 Gqg1yMLjiYANpeqFmcJFdHLMc6laZDcbjz1a/aLT3nBsoBE6SAXgkd6n3QBHnM7ELfFXVbvFXMH
 RZoVIRKAjYTjI0LLV3LzdvUOzzbGMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510200148

On 10/20/25 11:12 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Use qcom,use-guard-pages property instead of polluting device-tree with
> lower and upper rmtfs guard nodes.
> 
> No functional change intended.
> 
> cosmetic: set name the node rmtfs-region.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

