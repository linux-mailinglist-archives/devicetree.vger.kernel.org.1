Return-Path: <devicetree+bounces-244263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAD2CA2E23
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:02:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55E26301FF77
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A643332ED3;
	Thu,  4 Dec 2025 09:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PQzV1mCz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B6xgDBKW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C935C33030A
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838858; cv=none; b=JN066LLxcz+bBmISy6WnK0UB2P/KiZCS1aQcOuHCmjr7soWoHv23lfzm6hOMJmFQHYZW/IRnd5WFxbf6VJGObWxH94IshhfrlJr1ek4IfdB8gnqO8hGmLGHofQOVfc9Qx6dzFMI90rTPr8osMk9dGESypbuApLiye3G0xJArFpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838858; c=relaxed/simple;
	bh=5E6S0dPLm8Ohe7mo0eGfVPgrEN2WZZY5ddZJmTz+QlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YECZItLyHz1iDd/bMWADKf/1xr/A5+gntQ5IXjGPPkpTmHo3nsGXsHmAqBdDwQmJ+NnoFvLa+3UY6W4J8UNXl+1VB9EyYXpyUaF2yUTGE9M2UydadWejvcCnNylq2zPbHSUwuGbcuEkO3tT053eTHHid8gH0zuQDtjNvGE2NgW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PQzV1mCz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B6xgDBKW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B48Ukdq1044131
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:00:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xDXeYOjzhKpabC5NsVejdvuv
	bjmZOnXSM2XSS6y4hew=; b=PQzV1mCzpdwTpYDXeRury8BXIwwWDj9vDrsjPoqm
	EpieC9xHNkxjzdp6cPGm7ghUdxDWj3TiGFV1VSkP034/GDWhkvL4hozSgO9e/iCq
	0xkBXTncgafNurQdVUnIB0yBt+zsiuqjpSB9UKfglANAfLfNjeWFcQYgib6amemM
	38iIxwGn2l+7Gze8wY4BS6P14JMT/m4bK6V8wKE72AfIJ4NSJA41Yr/evp1bBLnw
	1XG1l+tM8CCiPgzsprJ9aJqKmgIt6+qhDx1dWPSfKgf5ELjGh6Yn3rUQ1TFpeJ1S
	oTKAnL8otC4xC1hqQzaCZ6Rlt0qW1cYTTqTn5kUEhMctyg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6uvr2y4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:00:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b244ef3ed4so159987485a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764838855; x=1765443655; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xDXeYOjzhKpabC5NsVejdvuvbjmZOnXSM2XSS6y4hew=;
        b=B6xgDBKWBBiVX7KYJ/IZcw0TvJhCWSh3k8zJXZ/h8jUBBZzdpckf4SmYm693cF44Wv
         k+iOysxqEUnuNQtYdVwSgFnbz3XHT8DxMExcTZtyn56Bz1zE5l/iV9kyjgfBYb1KjdZe
         ppLAU3mdcIUyv9zoSZL8xQ2c04vlpQi+aBTM1wvvHykEl3W4+3qhjXi6+ZXquwp61iNr
         u/3K2vY9mkqa1VDn9011VJW9AwGPSaa+aI0u77M0PYDKDfyMCePPj3OcmYX78LP4dGOV
         N2GDihiKOAWU+VsoSZxRjbKXnsqf9p8DOzor5cAqbRZplhU77WyC14v6AuTO6Tc3NoEa
         tKHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764838855; x=1765443655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDXeYOjzhKpabC5NsVejdvuvbjmZOnXSM2XSS6y4hew=;
        b=HjTpgiZcn/IdD7kMVGVpvEyUuVx4u6ZxhQ2TKEJ9j+p7kb0qpUnNFX2o+DC3UN/oha
         53f3lfK5Zqbj0i/k7+a/A5B/uL7BKZQlmyyoh9tNrpoW8U0Ye9n2mYw9XUgsT/SyXzv8
         Zy6LpcvjkfcKJGQSxtQO9cVVu+Nj+wD7VkuQqZlXOLCRJ+HQnhA6HnapCmfIkZ/ceuyV
         TrCne4OtCIYI6ba0foFG7/ugFQu8CQ4xhcfx4kPC8Ql7oEx9WtkJkZyws+8Ok2YkULCI
         PFntxUF50OScK4VODJpCtYEgTjfR3fwAoedfogqzKpxF+207vG+BYg2FpsXFDlsDV0px
         zz8A==
X-Forwarded-Encrypted: i=1; AJvYcCWpWIBYhlOvlpEyR5j0z42H7ZsZhsOPaF+HMhsEkh8guhg2qAzTCFoYN1sdkX7LBD/NF00GD54DbS41@vger.kernel.org
X-Gm-Message-State: AOJu0YxV3ZMq/WRh/H8AVOfaAIlCUhHK2M4xppFS3xijt6m7VF9cUV+f
	4GLXGYOZQGwWD6k8hidsdj3GWgrftdIbTOj6dYvgIdvaAE0M/ynoAg+BnJpiIwIwV2c2F8LvvDd
	IT3ifjbKMvtIdmbGYDfXIIAFBJfwwapjcDv+V4WY5U4XPsNYYeVzs39L55EB9Zm8d
X-Gm-Gg: ASbGncsRek3ZQK1l3YGOKg2COp3+VeGj9AdbzH1iGZMkG6HoaTTNwK07h9v3HMRRQpz
	3PUeiJmZEKw047PDWg/VtaU5RAt23iQJ3+l9vVqfco7KnYVbpfGCYo6FUChTKwClG6gCNicVk2o
	3OKaNnbTx+IM5FNkYJ7PStt7LBnp1IHXjaBk7CEjOcZZ6BfNx6nHf0IU+Z4z4vYGVK8nXf4DCXM
	e4APvR6YhHK0Jm7jKjdoNObvtQAW99DA2elZOBV4yCmzao+Mg0sfrYbXHii7QJLTJhCd5jTAJ0l
	9EfUb8bVUE6ZIkifaKjnJQcJhqlZwWOgAAdvhwwwsKsyfXMPC0sIGbKCw9Wi17owXwho28AG1sK
	YQ8lWLyw=
X-Received: by 2002:a05:620a:280c:b0:8b1:59d9:f1f2 with SMTP id af79cd13be357-8b5e59273e2mr673426985a.24.1764838855042;
        Thu, 04 Dec 2025 01:00:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+24TRblZFUTpIZI0DG40sitO+5mbYpjRM7t50v2HG/wx32vXe50kIyvRY4gE0Hkdi4PSaGg==
X-Received: by 2002:a05:620a:280c:b0:8b1:59d9:f1f2 with SMTP id af79cd13be357-8b5e59273e2mr673420885a.24.1764838854507;
        Thu, 04 Dec 2025 01:00:54 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331e29sm2050193f8f.32.2025.12.04.01.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 01:00:53 -0800 (PST)
Date: Thu, 4 Dec 2025 11:00:52 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add camera clock controller
Message-ID: <rhbqnorbvcnwn246lo42qegvjwejiikicaf4aifxnquaiejheb@yc44y7fyxxsp>
References: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3MyBTYWx0ZWRfXwD0WocsFUOE1
 WjtYw1VDz9Ygb69W1Mi1NWXk5LIRK44Xr1/SK1IG+4ppe/9DuWeDBhhno9NP9T+K5kv1MUKjJtb
 wArswVEEx7jC+rZtTD8Y+Q7idOQS9qStkj4Joz488nZ+ox5IRPnxmHtmh9Lj/JGLTJztfOlkXAb
 YFh59geAWE8p4wfYfnRMbDAf69UKcLCehKwmMgi0/t3A32AdeY0zWe4FpqmJhubvInx1nnBkSLu
 TINE6T3eyxWj7aNtdH50ewGYECG96JnyBkb7Pu0XfqrgmZIFMrzQ0kfC+5N0BTwC0ZHb5JEJc65
 4Epioht4AoG4tqyEIwuwAMPkg7N3J4rg9MqrZlxVOqUH0Ozy8XObJ3NuT9Gyy/t4Fx8erMFTNOI
 oBYtHnfe8Xwpiu0xSPUBW0UdDP6B7Q==
X-Authority-Analysis: v=2.4 cv=d7n4CBjE c=1 sm=1 tr=0 ts=69314dc7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hZ0LF6YWMy8Vg1z1-YkA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: JgbXpJwXtZO5EJ6GN7NULLjmc3q2V5Dg
X-Proofpoint-GUID: JgbXpJwXtZO5EJ6GN7NULLjmc3q2V5Dg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 clxscore=1011 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040073

On 25-12-03 16:02:07, Taniya Das wrote:
> Add the camcc clock controller device node for SM8750 SoC.
> 

So there are 2 clock controller nodes. Maybe you can say something about the
cambistmclkcc in here as well.

The rest looks good, so with that:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

