Return-Path: <devicetree+bounces-275118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCVxEjbps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:38:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE39281924
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9B1A31B07FA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D48C375AB9;
	Fri, 13 Mar 2026 10:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oLkd3JbS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dmlmt1fg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1705536CE19
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398090; cv=none; b=FZnqqHctZAisyUEqjqhoR4f8ASI2ICbvaubnEHfpTW783T1WzLvHan/X2R5gzyep4yPgYzwA9leBZaCTrIk7iqplCaVC5DaYdTAQlC+qq2hMf5wJXSkPbLdZ/T21+SH8dSY+lWl7+UlAd0X2XhxM71BQBxe45C0+03dbfmjuAhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398090; c=relaxed/simple;
	bh=3PpBIdeOtKTzyhlsHsVNBAIFsax8TWLerLyx3mUH548=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OCiwWld1cLS27AuwVOtk17MwbZXo/Hyn63gx1G/56yzZYkQb2bVF13vGF/qkpIsi8wGSLz0HzKOgjDmsWCgxt0KbCjCPTHQ5vtThLBQx5O+ZlqMY/HVnhgRO6lQuyNi3aF3Qoo3x4sYZ3q1N3WwfwOU5thNOLAg80zqgd6ERI9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oLkd3JbS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dmlmt1fg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tdiP3342514
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mBce1COGqHy5J47gx3y6AigzXU923AAD9JmM92KYPYw=; b=oLkd3JbSYZL1OV+Q
	yKTA2nhxr5A7b3E7LB8kHKklus4ERyvITirXeuEGWBemKPkOK34+gs8UKq4BYqVD
	5prBkUJwQwC0jMmHX192W57igfCk4vKjYxUMcGfdiFv7AULpgAkZEO5cvbVojWRy
	UbdACTrXzLAi/ccF2Tb/ogq0qHmc53X+FFt6SCuvlHUaRaPJrbYBlZ+x3N7J1DhG
	NEZdsuMjv9xk1zS1MypVGf1qj5Qv4ZES04MFHjc4Cn4wQxmsw3RsND0+tNyNXtUN
	a5eEUzaIaBsDdnEfuvwGwb1/TJGa+DBg1Z5WrBvTmxR7a8CKGJxlELrTuqJTlBIe
	4tXNag==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w4dj4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:48 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3568090851aso15264337a91.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398087; x=1774002887; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mBce1COGqHy5J47gx3y6AigzXU923AAD9JmM92KYPYw=;
        b=Dmlmt1fgt1MmHO2yAHfwOiGVo+OLZrgD2Cc96IlpVHnSO/0KEItTecgVTcV7Yyfvr3
         ZSjIk4QR9gFpu+5Xq+eDdPfe/9T0ehnjhoXNdr6gaAF75lBwrbgVF3hLqKeNS+tyucmV
         YV8hH/qrMdBkaXrpsXR5Y+Up9MHkkSwlez7cSR5cMjAxkipOWqrMhr1BxRSbwGVxKarO
         5x0Ic417SYfE5rWoCI6HI1tc/jpH4QAjw+fmVbROY/wCGaB3QtHw38JtL9MCGqgFnFgd
         6rpLzP9+fCk607c++/y9oD0g9dCdui9Q0v7TybVW/TSKVc7O8KNYeCitzhmRVcs9Kd/P
         0T8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398087; x=1774002887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mBce1COGqHy5J47gx3y6AigzXU923AAD9JmM92KYPYw=;
        b=ldE+H5GpJrPjb8h/39u/1ZkWQpXJPgltJ8Apb1GIwgBkN6LLq4wpVXzFa6NABjWNzA
         0WhSwYq38L3REoxEhLLC7WDSHSh+oQogfPm1lsgrxyQKd4FYWx7zHS6UNnPAsjrq/x5m
         63OkRthu+VvPnpnDvzdaNTlmz7kplitzWK75tawB4vsE6vS7lrSaTMtIjoqkKeg7y3sa
         rqonAEqt/I0fzloeEN6vmiZh9DPQv9vZafxCyvHTmK80YXdFEK1BdPuG+t8k/r/PgaQx
         vIIsy7pSi8Gye2tTyBK1v1YdKtnZCx8hv9pISUR3iX3IAVLU4dQq0io4sFjqjOmh7i7B
         GyhA==
X-Forwarded-Encrypted: i=1; AJvYcCUz3rbTvNvw6Rv0s0P7+s4FsOn889z1k3/pK5Pa+9IloSSrmapgU0iKhvo62X/88sqKDAw5hD9vgJnX@vger.kernel.org
X-Gm-Message-State: AOJu0YyXGFZUMGNQ9WUhTsqSfg5OUnnsZKaaMTM4AbobEUVJTTZCOe45
	bHN3teHZ0NBmcaHZyonHp1YtykNPKfrg9vTEJ+OXf4fVL4uiNeoYl/BfOGAXs067uDlJnMuq4Kj
	C0bBLhlv0nTYOJQ07EBSB+SBRgaydc4RQ7dn4CYULdmYudHTLkrZQiCLCLlDUO6h3
X-Gm-Gg: ATEYQzyosb/1MgywHd78IIAbGhNITzhJlUIdQsewST3W9A3MFRWUCWhtuj+c+YvCCHZ
	nRGVQAzQdB4VjcowBfcc182CVaLJqbMA3EGGFj3yjG5OA2KWHda6YPm3c8kTV627odqUgSoVLU5
	G6aaS6qCKJdzTuh8yheRgTCvKGS89oKB22v2S0irXCW9U58p0oNob39lHNcYuc00Ohc89bSeswq
	m5CfPdaImirbcu8JO1ncAEIg1vdtDdSTdoOY51eEG/cH2nq5xNPduisbLSjdgJ4NnL0WEv6gHKM
	ASESyvBcGUGVoDDyH+g0xl9r+OSZlGAllKT6V1Y3fnW2ycddwjtpEvSGNA1kxtx18MZ4vLqhc67
	dCJxbec5CzyMjJDWGw6A9lj2xH7D6SZsnkCN/lAiYME7pcJDkHKo=
X-Received: by 2002:a17:90b:1d08:b0:359:877:370f with SMTP id 98e67ed59e1d1-35a2206402amr2752701a91.17.1773398087118;
        Fri, 13 Mar 2026 03:34:47 -0700 (PDT)
X-Received: by 2002:a17:90b:1d08:b0:359:877:370f with SMTP id 98e67ed59e1d1-35a2206402amr2752671a91.17.1773398086633;
        Fri, 13 Mar 2026 03:34:46 -0700 (PDT)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fc8465sm8055383a91.9.2026.03.13.03.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:34:46 -0700 (PDT)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 16:04:17 +0530
Subject: [PATCH 1/2] dt-bindings: thermal: qcom-tsens: Document the SM8750
 Temperature Sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-sm8750_tsens-v1-1-250fcc3794a2@oss.qualcomm.com>
References: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
In-Reply-To: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
To: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aastha.pandey@oss.qualcomm.com, dipa.mantre@oss.qualcomm.com,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773398074; l=873;
 i=gaurav.kohli@oss.qualcomm.com; s=20260302; h=from:subject:message-id;
 bh=HeV6oB0sVZKpwZNKBC4HdxatIGgsL4LcpL//eKpKWsc=;
 b=IeCREOAvQRMw935aWiQ/GsdkIGd4XTtsDIPW+yqyx1/cGge2BTLSQ4bTMJyq1OjV+s1zFW9wX
 F0GiUtfeYd+DgL/kgVAa/gyldvO993xCQZt5EI5EW6LIXG8Y+Gw8Unc
X-Developer-Key: i=gaurav.kohli@oss.qualcomm.com; a=ed25519;
 pk=IdNsqe8rWsF6dbpGHfwPEH9zM0nbOdRH72HxUT9qPak=
X-Proofpoint-GUID: 1plvL5-qsaC0355A4oFyB7_ZLDIz-5le
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b3e848 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=brCocUxllU0CA3szuAAA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfXyDBiIKvm5dPf
 vqup4JVsz8gLq62MXVm4FuqNRk6rN1xc7NqPbiZ5HM+CuIqbDf9SqfWgU/O4n1BGb1lQETog8WB
 xrxl9e7h8+tgFEn2j4GC1SY4lenFjULQ5k3WFrvL9/Hx+qtvum40xSGqF5vfdKoF93OCngvOi32
 vNbvciBvXeYM/O6lv+Dpjl+AbRuCPy/K6y1O0BZpdI+XT4tSmqVURUCXPyumilrSh9Sb4D+AL35
 xzfCLVEVfl/BkGl/TKRKPYIbF4/t4FKiK67TYdzH9+ihzCLxdukjoqJAQYymFXPEqahbp7w5NKr
 y7TO7zNCEc8ulNr+A7dNTB25AyDimEURqieNVUP7sh976liYzBP1n2tdTu2vtFwSaXQTmJ6kv1W
 ih0aYS8Gu9G5qbL9M3ceIpkDI19hUiZwnAn6+eOMpYHK4OTQ+0oGrpoZjCwY1J8Qm4yPM4bU3Hf
 0C+ESqfrnVdrTLhq2gQ==
X-Proofpoint-ORIG-GUID: 1plvL5-qsaC0355A4oFyB7_ZLDIz-5le
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275118-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CCE39281924
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>

Document the Temperature Sensor (TSENS) on the SM8750 SoC.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 3c5256b0cd9f..57f1cbb4c188 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -81,6 +81,7 @@ properties:
               - qcom,sm8450-tsens
               - qcom,sm8550-tsens
               - qcom,sm8650-tsens
+              - qcom,sm8750-tsens
               - qcom,x1e80100-tsens
           - const: qcom,tsens-v2
 

-- 
2.34.1


