Return-Path: <devicetree+bounces-277743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGTXDmzju2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:52:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E8C2CAA48
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 951C63059ADC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E493CC9FD;
	Thu, 19 Mar 2026 11:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T+FZCmW8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pfgt2PrW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720DB3CAE8F
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921010; cv=none; b=bVvC3I779hynm9IbEh2e+R5WiJiF0779oBQXj+JyUkBEKUhjHgAe4TVYxb9qLH5YvNgBkjENNa7b2WYq1EQc+J6dGmJJO+/zwyIH7E2QsTb8zUCjmIPATQ0UI23tV+O97seAb9Tzu7It8+BTAspbKLbKb0jL0FdbszB5vMXdfP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921010; c=relaxed/simple;
	bh=YuenEqIdRg8igoTxz+P4VVeydHagY4n477IqpuqeT34=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F+bDKdjjQpQXVSIyKka1k4jLvx/HXMhf1L8MC/3nhxfwE22t262FHu3GKdVqd3MKHHKtxSAyk9ljYWwgnkrpdZgNbXsHLoyedB5cDnE3ZfsfGQMzUllb1SrzFSXVcVTAnkYFUwDOjKDvvS50tsOrc4SMA7rp4g/rbbBLphPb+EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T+FZCmW8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pfgt2PrW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73veO1898574
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:50:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MBqgvvTdnBvBQQ6eU6WnaZtEoLuofUqYLhKUpZdY8JY=; b=T+FZCmW8xtSqgyXq
	SzkSnf6Mfk/W1EZhjOVWNXIMZyweEajYdG524lhbY3saiMMxlG/SYiqkIQqiwZeS
	VTKEZ4egWtduwDdabpQZTuYZdt1fqkGQARehOLFT6rhVsCVlp8uh+Mc+pFbgk9rv
	1yd3c/O5zsaxu30xrkNix9IrNTh5PJosLvqvxm6iW/U7ZJ4pIcxaTmgKyErIhZqr
	XGaZ0S855yxH8D8I+y1iz448nmxGf7U/fuZZkRgo7S37QT9WhVZgvpZbq991JYc0
	93uLfgijOtD0bWsh4YisFlF8/8ryHEH/cAJm/f/mXZFSN4RQVDYrJzkArNT+Zofi
	vD8RrQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyyhgb955-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:50:08 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5091782ab06so125381671cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773921008; x=1774525808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MBqgvvTdnBvBQQ6eU6WnaZtEoLuofUqYLhKUpZdY8JY=;
        b=Pfgt2PrWAVTx5MZJT1c+wYwqOOLAnY3LpLgIPJZ7928IHUIg7kd+KZ2VMPsCDhka8h
         NDYv17lZizX4EiuEFDllhxFfHkLx8LHjg+JWvPzNrlDrNRQK2vkpnKkxjVPO47uGhVE2
         hxBqIE1Y6Z8Pehg81RzzvPK7lw/M10kDBrYhZi5mg1lmyFTLFWu8P0x8UHb9wIqQ2+sU
         spEZr0Tkk5V/pE8JQBclCBYLQ4DJAnafgN7Ifmzoq8SmpRPU5bNJv6yQxAfinN9KX2la
         e+4jwmqZbHWNZLgOHWmJgXZNknclviaJKI1+y/WEUcXMUGI3jc/ehq4h4raO2v+uZFk0
         nYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921008; x=1774525808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MBqgvvTdnBvBQQ6eU6WnaZtEoLuofUqYLhKUpZdY8JY=;
        b=FYaic815Knkk9sLNlWmYl6ao6+W4UGct8TO8n7iBZaAtgKy6u8RxCU/PrxWYpaUMiO
         sX2U0My27LhwgAkd1VC22T2mn3RdUtP1n2WfsQQ3jLbZv4cUCVgadX4qrZbrzsIK+qQk
         2Cncij3/gciZbazHuly3eOLa+wk/b6rQzYqtjEtiOKBS4XmRAzZL42t4WZFjw3owQ1tT
         2mdMTUxvyZj+tYDc1Fsr9uV6UJvjpC/e7ap32CszJuSD0lNcpEWAs8U3QMbfghibRHrc
         FAiUPwFxk89dDnbHivLrFMsEPuzgWBCeLF5RL4iXRBTQSjxPX6Mvy7lj4qq1lX/GW8Sn
         FRxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWCAZXssPxnJPO1Jsu0xlfXFMyf6SbWlS5ecBkPOT+Jr94KaPvyQnMjVjSyGqLsJNWVr3a+wcwiZbJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxFp3yfmcP2DK5WYV3c/CV8W9PW20C+vkFmB8wpKokdSm0oGrmN
	6p86tqDg6sRUdc/OnJrSfvfroYh/K8CVC6dAwegyLVOsVC/4FnMW35YVOAMBPRUfkGAAUNvViGI
	BrWuSTFWoiO4KwWbdECTU5MDp7y2LY27sAjl5w8WPB7omx5OzQHgSz/RI6Xy7OxEk
X-Gm-Gg: ATEYQzyWP9zOhfa1qw49T8OXzhB+cg8Fru1pgkDhtoKqVUGddt25YSNi40cyJMK3Db+
	NbyVXJ2ygtDDb2ggy9LXlzeKtdp311Yt7BVDb3q1wzob3TThx0e9mUkcM3mS6DRF0a/+pr3Uj69
	YD6E69sMzk5len/AeYLOEpj18MY7SJ6RJHsxn43ZPBv52W7awgP1/eZN1bgNMH0enrEaThrMSUS
	nhdWyGMSXU+l2IKp/G+L0Rfa5NtLNz0YnPausBwz3KRe1kTZMmD1c/B57M+po2PqKhgzV4oLI3g
	gNmVN7Kw0BD3ifIMcJmGYoQiJS6bqfWFkXrOSv/Cw19vTH0Bz2AxpZnCCzl9VGnCXtUxX4CUSYa
	sZZGro9TrMh61ErUuiGu+lvO/+JDedKMmthIkRsL8CWvv
X-Received: by 2002:a05:622a:49:b0:509:481:536d with SMTP id d75a77b69052e-50b148b1f7bmr90699071cf.59.1773921007872;
        Thu, 19 Mar 2026 04:50:07 -0700 (PDT)
X-Received: by 2002:a05:622a:49:b0:509:481:536d with SMTP id d75a77b69052e-50b148b1f7bmr90698721cf.59.1773921007438;
        Thu, 19 Mar 2026 04:50:07 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b0b9fdsm66384605e9.2.2026.03.19.04.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:50:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:49:44 +0100
Subject: [PATCH v3 3/3] arm64: defconfig: Enable Qualcomm Eliza SoC display
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-clk-qcom-dispcc-eliza-v3-3-d1f2b19a6e6b@oss.qualcomm.com>
References: <20260319-clk-qcom-dispcc-eliza-v3-0-d1f2b19a6e6b@oss.qualcomm.com>
In-Reply-To: <20260319-clk-qcom-dispcc-eliza-v3-0-d1f2b19a6e6b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=931;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=YuenEqIdRg8igoTxz+P4VVeydHagY4n477IqpuqeT34=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpu+LmjS8ixVUDjwLmPbYJQRb+GL1jKOch+YOR/
 7Z8oFgUnxeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabvi5gAKCRDBN2bmhouD
 1w/kD/oCHpu5+NgTvvRral4MGc5nyM/szpV5EKFjJccNgcirDdemS2AA6tfrxnmBpefKdlp8HRf
 e3Ff+6S91s4PEcfMJ0UzFoF8lotUFTxM3qLpPcSwSwolwVdZBqRNtH2uOQyGR0TvUG5O9eMmfLZ
 xV36QrF7WVP2UMqYRrP4Cngw5bFYXsvAWHDA7hzIuY7ckxnWMN6Eyz1ez9Am/MYLUMZYQQfy1ST
 4yxcQVeVxQL3Om+nuKS/Pe7IDc0l19FMuJqvDFvGfcdtg85u9zD4LTiV4A0gmX7xdALP7NMdu5T
 nb1yhD8+1NsIN+rUWkN9xB16QWNbG+VV11wbBSbraG+0n9brvkTd3sj/dDsdwq/taHjLlKFnI+4
 9aylRr/3vt6vX8AFqcq2gzWCYR8Q63Uo+Eu7Ri07JASPf8NaPAPapiLYmAKzCMcITXTfLxiywS1
 kwbIHAStUzXD4NJAY24ONOzm/3UBOjwdsR26n+g0FrLXRMeL+9z9VYv2rVZV+ZOm6fJ03QSnrjl
 r3g75JaLHyIZ7reXnxWSkpBljc+oSrrDDOjUCUr0AZlM/vjEkar+w2e21M1DC6VXU8woUCids0h
 uqF+MeXY6WIMdNlPZi5c4Y3Vh6vdB/pc8rbWr0Sa7zhQxTMuRBykK0vWUwUjTh+QGS9EcSJDbTQ
 5yEnO33XPWPtPNg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA5NSBTYWx0ZWRfX0eLKghk1RsjY
 KXLeYQPFyHQkiugP3bhPIMZrMmTCYAqArRyg2Rpc2xD2iTlQhXFVO3H9I0qrvfEz+LdEEdjUlNA
 Y2Apqj3cY77uR5LpDKd0kThI+DioJT8Rj8X1UtbyCk6g/sUSoD6GPjEb2bUICi9uQsDOd9tAudS
 3zIYs1089E7VaRzbQpHa8pV+NookWm9GBk41TwXHFdZ4v4Z5YtzIzBLqVDrTcvonI17c57y32y+
 N0YQiig4EDUV54H/Ts+DZF9G2YBeILRJ6ZJR4Fus+rkiyWgZjU616OSaCokHDlAuVZOYWpys9YT
 6uBPfOoIp0kSHeXtTt6Aa589VP7wM5N0NNFaF2L72bA0Cag/lUJNUjQ/mu2qEOVBqF26enjpriJ
 Ihsq4/Jn8niiRlJYQFGl4BT9c4HsgHCSeLDutMP3ObnG/2cQWZC0beZboKzqlbllCSUBZMvwF2m
 EBYVQTPk8YcpgOwLg7g==
X-Proofpoint-ORIG-GUID: 2Q48zSl8cTGcT4kLsktOsej6nSeWeShE
X-Authority-Analysis: v=2.4 cv=IbSKmGqa c=1 sm=1 tr=0 ts=69bbe2f0 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=2kCACx5iOotzJP14eBQA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 2Q48zSl8cTGcT4kLsktOsej6nSeWeShE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190095
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-277743-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B1E8C2CAA48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the driver for Qualcomm Eliza SoC display clock controller, used
for example on Qualcomm Eliza MTP board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Eliza MTP is being upstreamed:
https://lore.kernel.org/all/20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com/
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 18881bd239f9..d8938863b84a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1458,6 +1458,7 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_ELIZA_DISPCC=m
 CONFIG_CLK_GLYMUR_DISPCC=m
 CONFIG_CLK_GLYMUR_GCC=y
 CONFIG_CLK_GLYMUR_TCSRCC=m

-- 
2.51.0


