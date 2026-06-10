Return-Path: <devicetree+bounces-309794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QYwvO+BeKWpbVwMAu9opvQ
	(envelope-from <devicetree+bounces-309794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:56:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC9C6697AB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:55:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=LZpP40qY;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=MmFvxP0w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309794-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309794-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 86BD7301C93A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A52B408611;
	Wed, 10 Jun 2026 12:49:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E087E40860C
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 12:49:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781095779; cv=none; b=PJMIg4CbGWHVgvxaUpK6WEB0Y0nBhl+Y6oxi89vTNwVVf+YpmSjUMIepTMd2mQKkGDxSDK+e/hLVJLNI3F4iOR5lX8fbNKmgQpLPSJ3NIEri7dchrkLTVHzUq5/AOVB6pcT0rvuMcBlDwC+vNomqRaPZA854ML5sQphJiv7GZ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781095779; c=relaxed/simple;
	bh=a+AEROdaFgH/T1gt+1uIDSNRnw90/byoO8KO4nxU/cU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HJo70N/TDx93dLLE2mAOBK4vlBy+jReV6CkVN5AlfEXlRql+SjN8aUCuVzgjUkn71DluhHs9/fbhhQUPcyZgxQZ9DyUQOCgJfiNJaXaf3OEuRVzJw/BysjO+dbrsEHha+k1+DUi7vnK3u09RqCQyId2bjFzE9j2S32Nub3Vm8JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LZpP40qY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MmFvxP0w; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBpFB1072900
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 12:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D1DsMjLPGi4p99htuKXTxVfQyL/yIaoNbHde0W9TmnY=; b=LZpP40qYBLukOTD5
	1zkmcTtFp8On8607NukZ9ayEIAeXdJz45vf3ZfrPxAa/ccKtSwEocqCAULHySr5P
	TeJgzQxTuok3Xi2+wiC/lIFYa4Y3AaX4tNNhJirPcDpvDPKYdCJmbuGWWk3e3pg+
	0zM/s/YzX5F1TkpX3zZTc5cclB0U5mPsNd8yj5WKxNX86uc4ZVreRzKC/iWJDMZU
	2qfm2crJ6rvGPLe4DSFhWmD08Os52+PSW+skVZaUzo+O9KET4sQfwIyAwMYeV9LI
	/PqG1hZMOM0+PcVN0QP57MeKorBRMijHI4evP26Mop/bgn8eLIWi1JeDU1hQZ4gs
	kx44mg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epxuvj6rn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 12:49:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51757324dcdso13953991cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781095776; x=1781700576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D1DsMjLPGi4p99htuKXTxVfQyL/yIaoNbHde0W9TmnY=;
        b=MmFvxP0wx92AYKEjCWHurkpPbO0Cy03BRUunafSQYHoTzU8VSTFkUkoFfNAyhNqLam
         VedBRzf8/Wdl+zqFc78JU6d+/bU7k/nLNzhvStFQghoDuY8AlVAcOEQqQ/R/4TpHX4kp
         Vsk6KrrNQy5MezHeE5LYbGCuaCo5L5SrE5hGnIB6Kmr2qyeQrcjef+Vp2eDRo2uEUIdJ
         Ef1N3GTocUFPGlBUiC+AkC38rvVeQSixTYU3Do+PKBfYvxAvs1W1XCrnR/GxBv6ZHHZA
         6ymJvZvATkHL4yhTZSQUN1wbLghNm3TRJAVhoK+lOmTzBfojpgctt6/dBSAjuYrfXuo4
         Cf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781095776; x=1781700576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1DsMjLPGi4p99htuKXTxVfQyL/yIaoNbHde0W9TmnY=;
        b=tQt+J0okZt+qbVf9jK0Brp6zQvvVwKlKBv6MNtewM4bGTSocCusdWJrbnVluLbxWVj
         SeoBMuH07Qcfzvj/UZR8aEb4kRG0S2+tBlCNDRSMGVUNbwdoZV0dKpduTkxAFwG3gtzl
         UGFvQC+1XaLXlNgJxxpMRatB9j25QsVyu4VIZU91Low8ZBsukjZnrU+xNfZVwSuFHqa/
         UoDyRuzeU5vD5ljLRoSJzIvtdHk81poLkqEZ4tTUNnLMCe3SQm0rasNOnmDWusdBuY2H
         srnyQdnH2Wy2IUHHRNTWY3lK0xhXt/KF8FPMEu+4T5XWj+tUO1ulRxBAj9Yk+GjJdCb4
         e/8w==
X-Forwarded-Encrypted: i=1; AFNElJ+hxG7kH/MlguojY+3ufOMYmY9/5YjRc8ZlFCCEtRvVcCfH1jMlTCJVqA9id22Tf1u1tPebbjwYaEJz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2snMB+3N7Bkb52sKFfUvirv5U+nqxx1+Y+Nmjlg0FIANUaB8/
	HFYcIIYXtcNQlUdg2P2jgMxaodIymzMhhiR+PvEvNLgwhFEJsf7rBVccMvErn7lDdac//6vGLCc
	harEQ9/c6UeKg7NcOJOR80vgDr4a9Sqo9qY74Pq+6MH3v/8VpLfL62YBpIOVL9XB2
X-Gm-Gg: Acq92OGVLZ5hCB1DL8RcLlY25oPZHxiz1hDAqWQzn4YAmMikZJ3MCZvVNFfzE+KM4yL
	SXacez2Ny5q8TcVc9p9dOI3aDnZq4hRlA4KdfhvlmTtOsAcMV5yzb9FP02WU7p59nzaFHK6/0zq
	pz5d4v4WXSyYx7QK+0v/5x+W55C179zdiyWuuhUU2D5XSAeqxDyME0j3x+n9p0uRk5VcMs6ovT7
	rrcu7Hc8lg7BLzmEbL/NAMv8MfWppbNYqHazSYAWDC3g0cypbB/6Rnqdjrrkjmx636tC2ynHa//
	tRa0zuzpDVXf7GcrEg5XPP8J1YuH1QITtVdGKmlz8rkf2q0UuOh1HIIasjI5S891YBN6mW+0Iq8
	vbzdgax3wOnEa8cLwlzWGHnNcgmLVNe+lIsq/XPzQE0/G+5ej6uneqAAu
X-Received: by 2002:a05:622a:904:b0:50e:6311:7380 with SMTP id d75a77b69052e-51795c0d8bemr199147821cf.6.1781095776029;
        Wed, 10 Jun 2026 05:49:36 -0700 (PDT)
X-Received: by 2002:a05:622a:904:b0:50e:6311:7380 with SMTP id d75a77b69052e-51795c0d8bemr199147631cf.6.1781095775607;
        Wed, 10 Jun 2026 05:49:35 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf051d86f75sm1183745666b.21.2026.06.10.05.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 05:49:34 -0700 (PDT)
Message-ID: <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 14:49:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fLNtHJ2_D7-LFQ8DUMfirIsFLSNwRKqU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyMyBTYWx0ZWRfX6jEGfvB4sN1B
 Ox4uc+pZEwsC9JxRJUhNo9P8NC3smtKb7p7MozIHkpYd/sXINzDpwRTHNE0kspg2jRWgnXjgYci
 s9vOXU8V86ZjW9ySvfCZKQIMGEXIoIHadpwkXVzU5aR7S9B3YUzp1wg8Y2LY2FxsKTMAIhjeBj/
 id20Su718I6Bk4/b4sUlzr5zYuvZJ4fYJB+FadqWh78uGEkcnE+nwvimdgYiflNWEUkWmTq9VV2
 5rEReDPHH1EQqfwsxpmoA28R6IwcwPsh0AZzq8eHBLbBjI/6lV9zZLGw+l0JxjhgTi6h4RkLQ4u
 lCv2+C6sd3JCyQyy5fRSIIrc0GkaKp2MQdP5A4548Hiwg0/242lFvPIxIyN9HMalrb3cUk0DkfE
 Kf2gcUF+wCb+YLm7UH//06Y645Ce0i+5uyh07j5uqbjYrn3q6t8vd4L6Da6WkMmoy4VBHjCTU/c
 HItGeU/x+EFYE5g3p6A==
X-Authority-Analysis: v=2.4 cv=Co+PtH4D c=1 sm=1 tr=0 ts=6a295d61 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=HQjsNgoee9ZgyPM3yRUA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: fLNtHJ2_D7-LFQ8DUMfirIsFLSNwRKqU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100123
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:konradybcio@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:quic_wcheng@quicinc.com,m:me@iskren.info,m:gregkh@linuxfoundation.org,m:andersson@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DDC9C6697AB

On 6/10/26 2:04 PM, Konrad Dybcio wrote:
> The MSM8996 QUSB2PHY was not being guaranteed a power source.
> The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
> wasn't. This series tackles that, freeing us of some dt checker
> errors about vdd-supply not found on MSM8996 boards.
> 
> Compile-tested only, but docs confirm my findings..
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (4):
>       dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
>       phy: qcom-qusb2: Fix SM6115 init sequence
>       arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
>       arm64: dts: qcom: sm6125: Fix QUSB2 compatible
> 
>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
>  arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 +++++++
>  arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 ++-
>  drivers/phy/qualcomm/phy-qcom-qusb2.c              |  4 +--
>  4 files changed, 43 insertions(+), 5 deletions(-)
> ---

Note that msm8996pro may need even more looking into, but that's a
story for another day

Konrad

