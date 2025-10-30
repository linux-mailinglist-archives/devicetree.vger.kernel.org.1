Return-Path: <devicetree+bounces-233159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D1FC1FAD0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2275189B37F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729443546F0;
	Thu, 30 Oct 2025 10:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QEK7jHNi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C0pKRWBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EB5345CB4
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821827; cv=none; b=LV5A566YSyEY79yG9HCfK7USat4ElyAWGU+6qw96uoFf4thmAeOMHqXOgO+Yy6vWvWWY4GeJxaMHqDRkI0eU54lyuH9M+VcCBQU7QZOg9ea/hzcZkdud6eUnjBLt9tH7fJTMEW9TOKZGMS1gEcZtaxqNkmZEuxtcFNPVtD96y/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821827; c=relaxed/simple;
	bh=Q2iNvrKCt6EjMd8+5wqrhOR7IupMUVpIUZ8n3cJhwJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LbtieJJjE1agasE1fghb90v6UK9rQB8327X/XO3qU+SExH42YhGkr7MFUYV71tAdkZ52IA2kejAK5yEEMJPZO5Ltum8e+QsK0f12uBej3jmTXaksW163zqBJUSMj97sPUgMZMzCfcE+1VJ/hFc3LQRaBVPxdJV2p+2h26PuR/oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QEK7jHNi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C0pKRWBY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U6u9oq1501890
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3pEuAyNGKBOIpdzA6LIfvBm7X71hRcwKlUkme33lXWM=; b=QEK7jHNizowWmjpF
	ImhCH3zVNUF8KwCZIrt7i7QzccwymYkFyBdHEepwQ5QOldv6RIStIV2TXTR9osS6
	6xs85jBSV0faWzZJlO0bqmcDYMtJA0AiDOMyAcT6fakEh7vo1kOaxQEtAtXnlRg4
	eE7rEha8ivBY8hbwUEVBs6pBcIFPE/l4XCQdHN95G2SS4w+7KAFoXRjGCuFB2vpJ
	Hn1q2nRfrN+q+jctdEXOBJzY4WyppEIctNewmsQri8EclBVG5F3IPakneVjS/kcV
	TWCHAI5ppoxwqukOXtiy+yrwPA6J92AUJ8K6DDrPygYVFc9aj4I/IW7E6IJmsVej
	3CsZMQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3t1jt6s3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:57:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8934ae68aso2147441cf.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761821824; x=1762426624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3pEuAyNGKBOIpdzA6LIfvBm7X71hRcwKlUkme33lXWM=;
        b=C0pKRWBYq435PtBS7lowzXL8aXZXbLLYxu8CzaAHCtuyQtCup4IIMFROpNmZUQwbD+
         h+L9Nw3OEfg8ppjW2uGfz4blUrteJW39/gWB+7pgtC+yw9GifEYZFyEFGC7szjfRL1aV
         UH7o2P92ns4DcbjHsYAfQN7pKw1qoTKxEzG11CZjp1RyZ1nVuRISizJ9QVqHlkZ20qFH
         4ShkQ9edGj1aAF4X4MU6g4Busb5HYGn9lrITXOhNYJ18iJrrY5OtyyHUasHY0/AOEBEP
         wcpFyLQzZbVQwvE5FplR9FtD+XGpG85BiHC5NJs16QM4zFCdRvDIe1+3lvxZdw4oA4iH
         KQwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761821824; x=1762426624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3pEuAyNGKBOIpdzA6LIfvBm7X71hRcwKlUkme33lXWM=;
        b=u4QBgqlROCr9NcBfQ8cDj7u6xrJoMiwRzThFk0D8wulsrvpkdK2BDyMztEhSyYd69d
         gDbuymdVvtigUx7j7bjDgFo+gEcOFfCIAAHZNSEDJiRPNyGPwkV2ONhwIH225W8SNK0C
         tqbUC58WPheJVhgwNBjwId3WufSn24M+UEde/TNaGt7QKlyEvK3S/3+nxxhw0waLkJbB
         oZ3q0JCX8phaMIi5qxFNtCGxMCz6R8qHiZg59hj5822QDlHGGj2CC6xdY8TR0gU3uDbQ
         xrDh7Wxxf69OZrlUxl6DNhe2RzLkOYl0kBKpjJkRsfAtoxRifwVRd7p7nHxKnxQ8c4/k
         uZEQ==
X-Forwarded-Encrypted: i=1; AJvYcCViD7qzxsp48oXkImRDO4Vq2yB8FepFksgpcm2IeAgbLVU9bgMSzd7rsVDGgd/BEM/wwm2o6YvV00PM@vger.kernel.org
X-Gm-Message-State: AOJu0YxTA6D26GyDC37fGjICqV36yx3t8VC33gKSOz+5qmmm6cjIGXNB
	aKjGtT/dARd/EcV6fJwYOcQdFVfJyyNnfR7yWKcjWms3ftIVuP85A3X/0FVQBPe/Su7Xdr6qFzA
	pgzxzCFklZnW4++WzllZQXbHtG0BQ6Icvpdy/ORqWc5n9OzDhVI4lQA18wl+8QqeF
X-Gm-Gg: ASbGnct5lTFDQDbwpx7+Q1EfA+K2jjx+BIKrTUG6oKILdRySZrswlbQbb9kRUpj+r4u
	3SjNNmv2yxL7J9kFGSiEPPRnbweTSQ1ZNEWzq/jOsvInFcKV9mOgoQvhZ0ECVJPGc/94ww22AzW
	2v9Vec9qMxrIPm8SN3e5xolF8MPj6IgoanDOOOvmxQtOMaezSI2XwcGouHC6xkKDzgO0ivWyekh
	NmoizIXiUqiBk27wHgiBONAC/lq7sJYx1FJk9rGuDizU4Crb+L02SPxDh1Y8BaiguXifqcvgi29
	touzCIhbLSPVVJNWgkU61PPjtFneS61/CS5sofmG5aEsTQ/QFDtIDXDNjr3AT+CHsJlXDvPTdIU
	jEmog+3XFAXiPygXQ8dNUyKFzfur6zevXUcVSHJY4LzPDqPt4Ow9OJgjZ
X-Received: by 2002:ac8:5a15:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4ed15b8a566mr47304541cf.7.1761821824294;
        Thu, 30 Oct 2025 03:57:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFp/RgZaAkheFE4mvhKiSDpqtGFpbIRQNzBWuC6FBshCSE1O0nllTAOESWCiyF6a/2+gGUbbg==
X-Received: by 2002:ac8:5a15:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4ed15b8a566mr47304271cf.7.1761821823588;
        Thu, 30 Oct 2025 03:57:03 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8544c9f5sm1734960466b.68.2025.10.30.03.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:57:03 -0700 (PDT)
Message-ID: <b7ffdd93-8ec9-43c2-84c4-57d2ba77dc71@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:57:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] arm64: dts: qcom: sdm670: create common zap-shader
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-1-7eccb823b986@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-1-7eccb823b986@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ntTpjwq8obqkRb4sCMLxX5LZcP-OlP06
X-Proofpoint-ORIG-GUID: ntTpjwq8obqkRb4sCMLxX5LZcP-OlP06
X-Authority-Analysis: v=2.4 cv=M/lA6iws c=1 sm=1 tr=0 ts=69034481 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3S55o6r4CRsqHmcx2iYA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4OSBTYWx0ZWRfX7LwQ9ILBDu2G
 dhO9H+J0dsskou8dFGzhIEEKvDW/h1Wu+t0PCajUbiWd7/yxVAPGRIlZZU3Umn2LQlJrKiKrKoy
 M9aFVF14oNaDc+vilCYHd8byiMqeD0B0lV4tpbYEeflk3r+iBIARUe5vf9HY7qv+jQCekr/HKap
 rHnMz1/o/66GnKZWpt5twkX+WnX35psl6pYVZvRNzqbK/U9GqwrMe0AmY2o/iSXH+s8bpy+iygX
 wPtyYn2apMVrekW68tA0nv1YhKY9iuSGh9y85QK4/G6pS5WY7qmTJyJQ6K68kozqxsVu5+xsEd3
 cDYT/Oo4epfPKEEWksCYV+r7TgnhlwXet5E6gx5+q4F9d3Aub7VTABixk/vyHBmNG3aa7UsPuH9
 s9FAowLomwMTGagNyK8T2awtOQXoxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300089

On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
> In order to reduce duplication, move common GPU memory configuration
> from individual board files to sdm670.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

