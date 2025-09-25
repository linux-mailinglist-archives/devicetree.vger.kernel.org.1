Return-Path: <devicetree+bounces-221293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F80B9E498
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C162162F14
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:22:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299472EA171;
	Thu, 25 Sep 2025 09:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MpxISx3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F552E92DA
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792120; cv=none; b=Y6dmVvBxXz9lSBA71pEBXMvOvO6Tc7og9mciz7VnuQ3AzTgcTgZOUQ+O0AOUczSglcJYYQoCRCvbFo/HkE0zDnI5Rcr6UZ3/Q4RVt2apJZKrlGjESLytfolY38nzTwBNhTSpQ303TWqhCDj90phGRlBkBop2tW8D0Z9mjYc9ov4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792120; c=relaxed/simple;
	bh=YuN2jxSdm0ZZkGMeRrFad1MgrLUBYsgNVOQsFLIGfZQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TJiQxYXaZXBvmeXL3uubuAcchUq3gBCMQDw9GpKVr2/Qqcb5ujY8+idJpg/Am+I2aawhWfzCYtAdwuLx5NTQorSPq0XrWSDTUxpVfmL6Es9wNUMmxe8UHPrh5GBy8gBvTxUIvVvzYkVJDEpsvtbGI3SyJGPSxsMYc6k4OFUYt+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MpxISx3D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9C3bn021569
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:21:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qkY6Gkhe4/YsWoOULLmVEty3WERnlLeTlM1ZWPHFrjQ=; b=MpxISx3D5ylLI7z7
	xry39xZ8wQkjCX0D5Tav+KZW74WENGTIphUInpXBVPNrEK0J5iIKevLedCaQqrxb
	Mr/Y/F8WbfyqTQ0T/lyCFh+VxB75TTdEmUzXZno0OqkHBlruo1yyrwDi5xv4xQsq
	puJV1fggyRt+nU4IauL1ESO4wcE9Y8d2/SMNUsE1WlysrIVB2WXoUwRfIBlzUg+J
	MjYSlAlcRch9h3eyALoo/aEFlGSjH6N6fZKOyhay4fadPgF3qvc5m5hdDRWTL0uF
	yIiOujlPGMoh+GuZdbulCMsQEuK2b4hEYRx4CT6LGtf1zIDvcpkuG1ZFVut0GwVr
	8k+sZA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaf3up-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:21:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-795ac54d6f8so1635766d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:21:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792116; x=1759396916;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkY6Gkhe4/YsWoOULLmVEty3WERnlLeTlM1ZWPHFrjQ=;
        b=Xch7onRzZ1O/Q1yb6UZ+mhD1kdra6UteYl9ljfUo57iCi+F/+vbn+wjp4VFr+ocu2E
         HAVrXCSZYs1TPoAORJMOjDDJqfoVCCL+f0IULdYRofWiOS8i3sNeEe2NTnBuBMr8rnmt
         qtDTz3SBRlf/VBqFcNTAkpvJQJsqaHAx50gkQfULdg/x9crtuKJBAcCJK5FZPguAlaCV
         OEjrpH/AXaL9ycse84DCHXJ443yu+sxXE5EqzCcRdya34IxL0ARRcj7QMmRy/hTqnyAF
         QpPVgL8jk30b9VXehWoIsq7Tr8oUf4WYziCWybB/UWAsoiiBYfl5Si4eubddJph3y/aM
         +5/g==
X-Forwarded-Encrypted: i=1; AJvYcCVWGbDuEun6jzagH2Cp/xnZNkg2XUOvlB8UBcykz36Pf1AmeM4PtPw03EI5xZ1P7CXf6uq3+zoY8aTY@vger.kernel.org
X-Gm-Message-State: AOJu0YziKmqpgicZ11rDkG60XMwTewMwii3HmMJSwey4jtQQmtkG9SU3
	uFJRTsdh7NDPMxNinQMeq+WlM0icRK2DduJzJENHeOAhIHNevhYTSHUKkSVxEjEIV1w8Op3jR2T
	D6yv0sCbgfpNr4/txTShs/+KBxSuvUoGOGSpa157ItDiYCtAAOkortSoMIWrtS6B6
X-Gm-Gg: ASbGncsFDy4kM/TVDtaZMkMqaq38Ky9ZQ0PzxWP7wz9Ziw1P2Nas2kWBhkrOjj6liRb
	KzhVPm3yaURChepKnA1bd7xGqonnXnKbTU4XwgsXjluJ5MWY7yEMwiIzQ8WC/wdhafkJJ9wXMhx
	ywH5W5lZWoT/2t0VCeICK9Ivq0AaRUxLU4n8klMNiCNQ/q+BXUIIbuUv/zQ2DXgrCNX7zgxY03v
	IV5wgDk3VeRZmuD55eO/wtvZ50gIwCNq/NTfwrp1znK1Wr9oXQzLCfkMnweEik/gWSJ+dV2NrJf
	Rw5jaUCtSnLxZh/geFqqxjgnosZcrqtN6tIxbMmfTCAHMGmpRebmEmNWatBA+Nm0DOYKebF5lZR
	Rli0PHjPismyWFdhkD1yLKw==
X-Received: by 2002:a05:6214:e42:b0:78d:8226:756b with SMTP id 6a1803df08f44-7fc3ed8a772mr26720206d6.5.1758792115643;
        Thu, 25 Sep 2025 02:21:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwGMmaaEcZzBvc/SySDy9DSNDQiiY1yU0ffafhsYtzP+HwoCnQGiPWpwjVLzKv+RZ8tvroZQ==
X-Received: by 2002:a05:6214:e42:b0:78d:8226:756b with SMTP id 6a1803df08f44-7fc3ed8a772mr26719976d6.5.1758792114882;
        Thu, 25 Sep 2025 02:21:54 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3ae2ff1sm901820a12.26.2025.09.25.02.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:21:54 -0700 (PDT)
Message-ID: <3d808b73-7c6a-4b24-a3a7-b7fb798e24cf@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:21:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: qcom: sdm845-oneplus: Document TE gpio
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding
 <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20250925-s6e3fc2x01-v1-0-9293016768f7@ixit.cz>
 <20250925-s6e3fc2x01-v1-6-9293016768f7@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-s6e3fc2x01-v1-6-9293016768f7@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 11KAwgjUjZS6PdauUb5yZarcXX1mPFYT
X-Proofpoint-ORIG-GUID: 11KAwgjUjZS6PdauUb5yZarcXX1mPFYT
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d509b4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=OZMW2xe04SQmtW8ssQgA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX8kzijWfmsnv7
 1kA+VxPmLR+ws9axwpatPa4kZeHGL3MLupCH4//6jRfOTJGUIsxfg1FQbeH/SOCkAot0MOKm0GA
 o3GwNtxdVBcVmf11fKjlnGrGtFKarfx8YvHm+3pNqGTELmm+i//XZ5FGJUI1Or7B5VojFywPvdQ
 wnhhiHae0SMUyjFdEREaIWs8uyAIAOJteO1BxysWDnvE4za5T5IaWQ8VjSYF9q+dW8LtFaQ9u3S
 jzXZMA3vW4nA5C1oOmfsBlJHxAScgLpFkGjJKjadzz7CKajvXr4h/z/NdPEv99Ab+HEg2fd7FBF
 a+l9D/J4M3jykmfEmxDh9MdvoGzJeFIUXutPGeKt5IGAX5jJAc4bk8Md8MAZhrmFWkNs4Q6QY7d
 RmVmmvUb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On 9/25/25 11:12 AM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Document panel Tearing Effect (TE) GPIO line.

"document" is a keyword in DT context, perhaps "describe" is what
you're looking for

with that changed:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

