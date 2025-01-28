Return-Path: <devicetree+bounces-141434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8455A20AF4
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29F3818831E1
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4651A2860;
	Tue, 28 Jan 2025 13:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbvULEwW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BEE18D626
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069549; cv=none; b=sQjzctrSiPpGmtMowZTjeCImC51ipFdJ1ibrx8FmXEtNxARfr4J3l3uVjEhNUWrIEGT8HunViLzdMMAnDjx8FZBHeOLPUbOOyCQek+9c+pI76LB6Uqf9VB1U7CQE/rVqxjN0Tm3s1KHQGYUFnlgVHPrzVFmFH1+Ie1/DyhEm4EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069549; c=relaxed/simple;
	bh=eul7OSgl7lWGUq+8FLZcyH4sOLaRf5Ciw++Y6vhmfns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EpXIJbUGQOI3kMTt9TQPRDV3SltC+qfnRc81QX0JnafZ2cnCqbhnBQBgnX90KnphtneQr3JBPWRM0B5larq82td818IfPmKc13HNpIRQpjQ+LekP3GMXqqbJ6m4C9WBpEHp68QPK1sfgpnfnWCO6/gFCN8qsEow2AERpYVO/00Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbvULEwW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S4utLJ000395
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QElHZpsqHaqu8pHwEaG/i/0egJwiOljuXuahr7b3iW8=; b=YbvULEwWwHADxVtj
	FC94OOtCP4ZFLoVM2BEpY6ri0w+RuE4jXo3dqe/GtX1hX4gH1QKXwQzyzXAv6FnM
	3wewqscXa9uUxBQDefXFTQY1A4/yUQiI/Z2xEI/6/9d0gu7G7t/U6/iD/S5INTGA
	hREsSj9ElaapiPZPxqhH3mZB/i7PGxiS1/yxJLznrZdEdOCKmK5DWn/a4QbSoRKk
	EK1FcSCK9M57lR4+iBoMwCn+J3hbmQ3J4ziisuH9cG8MHyE+XJQAW1ogGKjMwWwi
	ofDUv+OYeYLfoINEEfnCf99wgG6+yU33FufGnbRKjVTCDdMO+TWYR3rASePaO58m
	iGCYAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ernks266-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:05:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6e5c3a933so129842685a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:05:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738069546; x=1738674346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QElHZpsqHaqu8pHwEaG/i/0egJwiOljuXuahr7b3iW8=;
        b=h05t6d1DxAEOZg4e3JRFygoKVH/f6RqJFsjIZQOUM3Zz7J/veRn5KIGupcRi8Dq2+E
         ZSJfAaBzYh0+AOXS3gYQGHoDD+GnHvGdpvxLLdoPtUxP7CC77o+DU4hP2J7f/LS6Jlz5
         PRNzN2eJZR+z6a5WEz4LRkCH7Fg4xGDD27cb0OW2djby9yMO4LkQhRQ/WH0+bL7MO3If
         S52WtLvHePCnUq/b4sO/678oJNMlnCdBH1fMnKlM4i6PtVBRxPll1O2R+HMhZqeWYIvl
         2t2BynOxzdRjlvILhziQ7U616LR87t3EX0hLXfDaqp348EIAmZmFRtRzrfjN90qfvfmu
         1qmw==
X-Forwarded-Encrypted: i=1; AJvYcCX1lAgeHBQ5Nd2Fk8kmAcltzyxsKtCHS/46Rz52odqsi95j6He3MDQli2wmemWxbHTZpJBocR1AHMqb@vger.kernel.org
X-Gm-Message-State: AOJu0YyAyVk3Rq+ZfZeFylwtvWOg3Mj5Q+kDvhpAwuWe4ORg2tw40OHD
	G5hbrx4hpwR7auqfqbWI9VyB5OMbsregHGOukMloMT1Zb/gajZAkFfIxi81Zsb9JDE8YJXrVq9n
	4wkfV2Ox9oTqhkkyxuvyieVBHfyZei1HXhCnAJoHrmJRCjug/O1bQokGGCjnI
X-Gm-Gg: ASbGnct0Fgqorznz+YK0s4H2A17hiYdv6J89GtbEJ7kUOq+O+Kk/xo/9Qka5k1a5BYt
	EkV6iJ/E8hzIzLLqUc5icvqzLbq0jCHS85Zk6jQWg6rEcuICy3b81AHZekTiVfZYUBMLxWZNeFn
	pDT7DifNg2oPi6H4QiIYROS73AX6PFYq068DeHQ6bK98i8IPd4u2xr6vnSJlWaUA4t1t/AZQrnW
	vLrbJEhMnK4ALzlO3EJDpVH5lJYcMOmDhBc0c/T82sUrf6eiDFu6Xvk5B0fjbJRiEaEBA5RcIYd
	dSSoz3230+DDLE4xC/2ASwp2A3CYxDIYS79zs1/6kIcNwdpjn9zh1mH8I8w=
X-Received: by 2002:a05:620a:25d1:b0:7b6:d870:ca43 with SMTP id af79cd13be357-7be631581dfmr2613020785a.0.1738069546415;
        Tue, 28 Jan 2025 05:05:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsjEjmIA6wjNTkmoRGxtzayVkFUT7w6ffGcbnPWW5Qa+gXEmDtA817BV3QdmKfrnJ6tqz9Zg==
X-Received: by 2002:a05:620a:25d1:b0:7b6:d870:ca43 with SMTP id af79cd13be357-7be631581dfmr2613019785a.0.1738069546089;
        Tue, 28 Jan 2025 05:05:46 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186b318fsm6931769a12.62.2025.01.28.05.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 05:05:45 -0800 (PST)
Message-ID: <90cb54b5-1770-4fe3-a8d1-91137740245f@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 14:05:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] arm64: dts: qcom: sm8650: set CPU interconnect
 paths as ACTIVE_ONLY
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
 <20250115-topic-sm8x50-upstream-dt-icc-update-v1-6-eaa8b10e2af7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-6-eaa8b10e2af7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gKzDn0Y5jhYgI3oTfabx6ALaoefTZPni
X-Proofpoint-ORIG-GUID: gKzDn0Y5jhYgI3oTfabx6ALaoefTZPni
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=919 spamscore=0
 phishscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280099

On 15.01.2025 2:43 PM, Neil Armstrong wrote:
> In all interconnect paths involving the cpu (MASTER_APPSS_PROC), use
> the QCOM_ICC_TAG_ACTIVE_ONLY which will only retain the vote if
> the CPU is online, leaving the firmware disabling the path when the
> CPUs goes in suspend-idle.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

