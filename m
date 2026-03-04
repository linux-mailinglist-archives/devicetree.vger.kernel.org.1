Return-Path: <devicetree+bounces-271203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID+ICeB3qGnpugAAu9opvQ
	(envelope-from <devicetree+bounces-271203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:20:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0AA2062DB
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C70831FF970
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466143E3D83;
	Wed,  4 Mar 2026 18:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Da9I29IV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VAGkXdGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9E23E122B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647452; cv=none; b=ldKWOuosWqi+RBmK516MiJ/xO7rYxmAFdmpyV3KPAeit9YUe3gwbIwg+iBgmgoVVvN4bRVx273AfYifIQRnmiJCvuzZANfiWn6km6OLLsubXWl4PpChMdDZjbRqdxeybnZb0WBqng+afRbkjBCujdaOILhhZIxWAHKHsi+W4pP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647452; c=relaxed/simple;
	bh=yBVN4FEHADdTSQ++LEmhmTEyByZ3pz1DEJtf2+BqO1w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U5hvJWajHZp5KBgIqyMSYKW2sqeEh/YxJoJE1A1MjvIB3nwhTbarAtdi/UNzSCXrLq+SlyWO2MhlI/9nVWRfpTke/L12rSXEKm6noH7FQ72zjZWl6EpvTSsyXzz3o65F89XtwPecwzwVS3a9deFHFcgXKLmLmK0lqNZ04RFmZkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Da9I29IV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VAGkXdGA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CHMxi1678073
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 18:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PO6gg0/IWEmCTv8xrfB/fKl5SzRNa5BhzNOETtSDJoo=; b=Da9I29IVMwGbl9Ea
	c72WmDPOX5rt5CF0pF7Ff1EjoIZ/RQpe64bonHHhQxHdNQx4ThPTmq/Xx8Wi5DjI
	KOQXKwbU/zqDIn/38cd1q8wOH8y4BXd4xTrdBbUrnpb55XHTrYfdFZcfaN+K7LLO
	L6ShCmfOASQeQh3/Kn2fZRVsnSq11UOOuGhOZXOP9+D9E7nHZ7ApV1dagKXA010a
	Vv4j+MV9m9sTQRbP4aU2HzO2wqO0TICpddRZ5oDruTm60HgT2fdgnko9uROAaSIF
	U/dgSDQU4ZKesjhP43MSM+lKVyO+us1TWWRzxy5xENAQn+x5qp5NOrqO9cMrVCDc
	Wyvqmg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73hbvpk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 18:04:10 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35842aa350fso31717018a91.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772647450; x=1773252250; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PO6gg0/IWEmCTv8xrfB/fKl5SzRNa5BhzNOETtSDJoo=;
        b=VAGkXdGAWTvV1LP36hxo4B9C0qzCmGvykXz3nLoznkLRS9TxYCBO7bRs6tDjnYSkH4
         lAPIlJQkdhozpATMMrbJk/BYlksAIdr7hXg/Twoc5lpR1NxdP066OtbjFOQXm9eD0suY
         8mWXeJ2/VOeogTlSFLOQ8EOGw3EWBQiUEXNsmdgiduIFriP5ur9z0ML0Xlb5/qIetchG
         zPtwMAoZenhhlddjARKRyT2uEgvtWljyUHTAwe4yFaNCBD3YR4/goL+LPICabfptkdTd
         eaPFooLffyAQcyfBkXQNsGvBt8fVOH6f3Ul+hm53zYtHcDqifahhtKaWxtQo3UqdqhaA
         nuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647450; x=1773252250;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PO6gg0/IWEmCTv8xrfB/fKl5SzRNa5BhzNOETtSDJoo=;
        b=Hi06ffI25BcHVeFDs5xUFc8LEV5118mCYSz6JnLq36s3epmCk4b7Kln4KrDSnJg3O/
         ucHmOBEE17gVR71uUEsUqGCRlcqpBc9diQUTlHOlubK97N7AM5c3n0NYe2sNFrMtkdcj
         GzmaT9D7RvYCxjTXcwHloo1lx4sCSa+iYn2JAGzppVos8JFU+/1PLNvtQM5azXOwzxLq
         EfhfJdwhkcw430oPo6WXViPjLzDk5u9O36HR5XYZXOCQGKO3KXXSl0INCKni8JA1dq+N
         i9YaewIT+f+1XlyEupO5ckTNQbbDZ7mFdUe9wAgz86QcJ1sbSIgg34b//tN3Eb7+A3jg
         7WaQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4/DkSFLKt3qZ9ZAVt8/3WRAMGQNyzFk8Y6DQbjOfzyS8Kw26kMQr4rQJvMXGbhiE0KUGQuiN4xgxl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx5mgRfgILRYB+XJvUuKgZZbsdX8y4xZnSwTSTs0/i1eL2UwrX
	j4yoftFt9gydJaWDViLNoj6ENie+B3zIZIwcB7U8G9783EF8z1pwZwP6HruzhJOdNlRnchPsDdn
	Ths/FfxTEFsgNGiuFDw8UUTdsKAzWrMGNIDSFu1241hW20moJxTJjGrAijvm4mXBw
X-Gm-Gg: ATEYQzxDrTKqULpZVqk3iJSJWrZ0+SJ98u8LNrgjQLC9xeatb+NtvG1/6Pme2/7QHzo
	tVsf2AsADP+GSSSP/c828UlF33F/+5S8ALTAAtYNQTNNtTpFf66Kq7b5iFA8YfMB6dlC3Vt/nPY
	W7b3V/GJ5UrrZkwMrpWz7qD+siTUg0ycdjrJjhDRiG74/cW+AJlAhdCphDsogOrBHTkQJUQxbcZ
	KKezXxtEins1+WUz/n7Aecgc6kFXnwAavbPwA330YUrxbcrj3J+7hx1z4Zd1HR+tvNiQ66Kweim
	v2JOtEcfBTqsQ9t/dzU6uWFC2A6aVQo68GhuGb0p9ibYMXXaFn5GkP1V60fTwpOPrRZpLESaInD
	7qYmP/48tR3fvjhwKme7v+e7orGOgEN3coRsBSqsO7+tjcDA9fxWn2lVsPg==
X-Received: by 2002:a17:90a:d604:b0:356:2c7b:c026 with SMTP id 98e67ed59e1d1-359a6a661c2mr2569419a91.23.1772647449532;
        Wed, 04 Mar 2026 10:04:09 -0800 (PST)
X-Received: by 2002:a17:90a:d604:b0:356:2c7b:c026 with SMTP id 98e67ed59e1d1-359a6a661c2mr2569368a91.23.1772647449023;
        Wed, 04 Mar 2026 10:04:09 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359a8f22062sm1080606a91.1.2026.03.04.10.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:04:08 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:33:05 +0530
Subject: [PATCH v20 05/10] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-psci-system_reset2-vendor-reboots-v20-5-cf7d346b8372@oss.qualcomm.com>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
In-Reply-To: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla <sudeep.holla@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772647398; l=2477;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=yBVN4FEHADdTSQ++LEmhmTEyByZ3pz1DEJtf2+BqO1w=;
 b=OZx6ByiWkGv3E+6If5hWQp0cKX8PXq1wNtaOeIuzjnr5JeFhAImHn/a0+xFkU8UG/ps5TFj2n
 9Jc3aA3+ZH0BjMvyvVjj4Darm9xBnR8dtDsVx+MXkx4rc34mEfbRabt
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: AKxBRYpQ5Dnq85BA3mLkVyrUZpH5OrCN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NyBTYWx0ZWRfX1/WCWEFxjJ8M
 mPxjywvTmRM7EhIfhM0/0asGuFUHsY/J/3gs5XZqoK1TAkkaBgeLSlUfg6iBvKGT5mH9DLUU9Na
 fpQ8un0L29nu9LdYh93/YPk72e2T0TPXFCLLfipmaipVQ9uDq8ZKsnF1kYAvnW4mlgvyFiU87q0
 McUyLmtRCfDQaK/cZe1KLRRMJ8tviYj2pLbf1KC2/JicjEUbk1Q9E0/iIYAkkXgyYHqMGZHEgxI
 85jG7WsyZpCtf6pAfi7htM6p8WNVD7EC5UncrfYlDK5fMJfD1KhbO1x7CnB9ny0H5ba2tSZxKGa
 9x6wZvC8N41e4FDFY96z2ddH5gg9tqIBqiwkYAQNYygUgmTkzc88kaIRX6MeXtqpz+fp/kwW0FG
 6U6+mNWKBVJk5uyjQHmL3yHk2KblUJM+FM9wsQ3qYNHUEu+ccjbyZrHAEpTtj3Qyh4fiWANaDnQ
 Nq9mkY1buhoLsfK9Sew==
X-Proofpoint-ORIG-GUID: AKxBRYpQ5Dnq85BA3mLkVyrUZpH5OrCN
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a8741a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Z1E3qa2j_4PWJv3PNLYA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040147
X-Rspamd-Queue-Id: BF0AA2062DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271203-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,arndb.de,arm.com,rock-chips.com,gmail.com,linaro.org,ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 42 +++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 6e2e0c551841111fbb0aa8c0951dca411b94035c..5fdcbf331ea5620363638feb6f8105427a87c00f 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -98,6 +98,26 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/cpu/idle-states.yaml
 
+  reboot-mode:
+    type: object
+    $ref: /schemas/power/reset/reboot-mode.yaml#
+    unevaluatedProperties: false
+    properties:
+      # "mode-normal" is just SYSTEM_RESET
+      mode-normal: false
+    patternProperties:
+      "^mode-.*$":
+        minItems: 1
+        maxItems: 2
+        description: |
+          Describes a vendor-specific reset type. The string after "mode-"
+          maps a reboot mode to the parameters in the PSCI SYSTEM_RESET2 call.
+
+          Parameters are named mode-xxx = <type[, cookie]>, where xxx is the
+          name of the magic reboot mode, type corresponds to the reset_type
+          and the values should be provided as per the PSCI SYSTEM_RESET2
+          specs. The cookie value is optional and defaulted to zero.
+
 patternProperties:
   "^power-domain-":
     $ref: /schemas/power/power-domain.yaml#
@@ -137,6 +157,15 @@ allOf:
       required:
         - cpu_off
         - cpu_on
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: arm,psci-1.0
+    then:
+      properties:
+        reboot-mode: false
 
 additionalProperties: false
 
@@ -260,4 +289,17 @@ examples:
         domain-idle-states = <&cluster_ret>, <&cluster_pwrdn>;
       };
     };
+
+  - |+
+
+    // Case 5: SYSTEM_RESET2 vendor resets
+    psci {
+      compatible = "arm,psci-1.0";
+      method = "smc";
+
+      reboot-mode {
+        mode-edl = <0x80000000 1>;
+        mode-bootloader = <0x80010001 2>;
+      };
+    };
 ...

-- 
2.34.1


