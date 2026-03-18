Return-Path: <devicetree+bounces-276911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJoRNSslumk3SAIAu9opvQ
	(envelope-from <devicetree+bounces-276911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:08:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2842B5B2F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0AE73068168
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 04:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D648E33BBB9;
	Wed, 18 Mar 2026 04:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xwi5xlnu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gH4pwYI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BAF1C3C1F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773806826; cv=none; b=OAd0Tgcnsg/tbwWqahwvXmZ6EFTtps4W1/7Gx2dsok/68aSKVU33n//MshGm45avqxlrfKfSh48Otyd722Pophk2HOYq3qlB8TsX8uEZ2nx8BAFXfc2rmC2VAZk7O7A+Q1QpaKCmz2p3ZMCYfiE3glf3KCO2cxnKsXg5du3r7sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773806826; c=relaxed/simple;
	bh=o2zRIyVnrK+K/Z8NB8eFZDC2LHxUxWG3udiN9D9rX9s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hzxEwDomEyOGOWhUcZ2ETT18NO29CiUuM4+2Z9nmrpSbKyDZ9RiBmaPZbCw6hquAMt+ydePsH0vgWBPVUs4Ew5mkXjY6nm0bjRY5XauPpPIw4T7GnNqGAk7Z6hH4F6TcW+B2HJY5tde23z6aUOUJYIc67fZ6mZlfBAvBc554lTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xwi5xlnu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gH4pwYI2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I26lPQ1261175
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dnFUHnj6wfV
	nSKifpravZYf6kIMdlWwQd5zEO1oMM9A=; b=Xwi5xlnu9OsN86yTc19VM/xsmk+
	tsQg/t+B6r/a2qOaZR7b1u2vrav7mNSvH5AcSTTwPJ1hwfp1dHTiJB0QU97CRCAf
	84pibotQvaE36fv7crjeKSe31qB0SrfJ0PbOP9QPnLDFkJ9mSSeAyyy+MTb8Iolo
	Kbc9kf0lZYZNJg5v/qypbDWzfS2kOXt7KscDL9v/x3PY+i3FN4G/LPlSfpixoNGO
	M5b4elbb7a5oF/iy045YkqKiB55IKzeOFxiWMsz9vRWlfSx+nm/Y4DQqzAWw9sxl
	LSUhWeOvkMeLARnlF9mRy27SmZOGkj3JdPVpbJeewQ+c5hIhGmBuVoe/hHw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy5g8kpcs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:04 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad5fec175so311431665ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 21:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773806824; x=1774411624; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnFUHnj6wfVnSKifpravZYf6kIMdlWwQd5zEO1oMM9A=;
        b=gH4pwYI2WIODaobi0GYmmbdGQaLG81yFEWNlQumLHBqcBri+FrvhMfqVbgvtR4LSBn
         wrr5B664Ba7pbr25ItgieGhi9s1nn7rBjMLwSOcQVdi59ksBSMy/297he8A/OGeuw0gn
         Je/X6IAxyIUCd2habe1FVizVVElSSjX4tt02oj32Er0RB65WJZO0fR7yrhzjDh4hi0lK
         7aIZQwp3bfdKNplnZflQ/O8/keqelqHtgYcpteBJlMGb1aNCpSCnDl8ef9/t1t/vb8G0
         Td1CfLpvLWezTIdQWii2qKoue+kxFzraPpW1jzLCqv2adG8VA+Zl2L8Fdx7434ibPSyX
         ayqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773806824; x=1774411624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dnFUHnj6wfVnSKifpravZYf6kIMdlWwQd5zEO1oMM9A=;
        b=IM1QZZBEsfUC9M4mJqeIX0WjtVUSoAU+3qoym0z7yxA+xn3CvyM4rY7d7O4I+XGztK
         XPNBx43vhSDAGqJh2qE+09qvuwCfIQJc1bnVTAT70YrLdYSfbEtet987JxGFWGAPlNzB
         djxsPzNCr7oqDEsrtAS9J91ljBTlG3BkHQx4SzEOvY0wXkPAeZCoRSo5CyZc/1d2IIEq
         80Lp+/5hRetH8MAHrkpgEMY82CGbqI1PB/WocesghaZETjTmrBM0p4O8/Wu/hLOh0Wch
         0+AmXq8tf72U1CtVRdR8/723HsKCM3+T9NAZgI5RybjvVBJIARR4ZEoZa13iotXtipqm
         G2sw==
X-Forwarded-Encrypted: i=1; AJvYcCVYwfqYoMOtFKXpkUJ+4la+cYv2aham4m2fDxTrtVtBIDHhtwTZJSSZFXl0PNs9XBzK9lVOheD88S0m@vger.kernel.org
X-Gm-Message-State: AOJu0YznFAXysfDyP3eZTWxuxa/MKOpUxP+kDPa0JdcV+QVspX0hmawE
	tYczIQ9mN8qdl/qCnaAPBIBnqhO/lq9MsNEbktN+X3H4nVAz8+U/CUyIS7GxwXlPXRNS4nEXfK+
	fVZdVSsenqvZV3S6QdLJcldtUUGiseLv8/UeWsX0erOaQ2ylXKX5PZVyuKQAunB8D
X-Gm-Gg: ATEYQzyMreGnt2QIHX/ddbexiNSmpHP/1v6wz1piCfB3pHq0WU5S4SLLKG3PKmVlt4A
	M4HDSNf7WBF6tIuTp2Ak0Vge8SE4Wz7cGrY1ZZjK5Xuc0HjkARJpdfFWXGFbu/hBu3XtfaXQWs3
	n0mXpYKmkOXD59Z1P2DekWsPgme2jNvQjD3DyGkp3OUIIbPVBmT6oR8lvyt2FRoZzrQQy7w5bH7
	VwApl0OWT/vspw/stOUNx+IXeItM8/Qy8XTlnJmLPdYkbpurvwCSjSwNFgnsXwE6IYVaTqm6TYS
	QcH4WrDyuCPIi+FQli1GjDoX/jFDJkfbco1wwa8uPBKLr2jBZ8DhCpAxC/SgNdbBFFnHp/zPqtp
	5zwsLeBOOLPXswyyrd2XJOQxCzYmpJsvZI2q+Y+f76G8Kb2hFmV9db9c=
X-Received: by 2002:a17:902:d583:b0:2ae:55eb:f82d with SMTP id d9443c01a7336-2b06e32433bmr19445225ad.1.1773806823793;
        Tue, 17 Mar 2026 21:07:03 -0700 (PDT)
X-Received: by 2002:a17:902:d583:b0:2ae:55eb:f82d with SMTP id d9443c01a7336-2b06e32433bmr19445045ad.1.1773806823403;
        Tue, 17 Mar 2026 21:07:03 -0700 (PDT)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f12cesm10243425ad.41.2026.03.17.21.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 21:07:02 -0700 (PDT)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v6 1/4] dt-bindings: usb: Add binding for Genesys Logic GL3590 hub
Date: Wed, 18 Mar 2026 09:36:41 +0530
Message-Id: <20260318040644.3591478-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260318040644.3591478-1-swati.agarwal@oss.qualcomm.com>
References: <20260318040644.3591478-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: -O19jsNfs6TnYbwsDKW1uGhIjeKep8zO
X-Authority-Analysis: v=2.4 cv=EeTFgfmC c=1 sm=1 tr=0 ts=69ba24e8 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=1mrrX1IwxDsCUTwcy_oA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: -O19jsNfs6TnYbwsDKW1uGhIjeKep8zO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDAzMiBTYWx0ZWRfX7X/CeCxjUIy0
 B+ArtCKTINll+AJUuwSW4QYxOzACYL/0Dknmx/gXRCrrC+FUcz1K39BjNN2ZjzIn58AN0x7DTwV
 FpRaI011QDDlNrEa3ZfzlnX6jSjwnNwY97ktiT0avLf8v+yxJPKobUByGgS73rBavdBOpPpDyIE
 9w7r+cwEyn1idiIE3gp0HDF1vPC/1SaU+fNmeJ1AnPUvnKIafv8CNH9rqLlnIHlDScM8C/xTsSE
 HDi/Ls1b82A88XdoIpx3nPMFzJMjDDEATQMapPplZPzKA19t355Eqzupt/9bhKG16mmz5Zo2Chm
 BjCK4jUu5dv/SJi5itMDOfdVN3vxjgNkg9cgWM2f21XWvDPuVMSemMv6+eUtDitqQsU0fiV0cF1
 krzvXqpNS9x6y+vL+GaUYIxLEy9QaH7LG5+fP7qwNsAIAqFaLggrTQRzVaZv1LMZ+x6seqhXkSf
 ktdqWDbrr5KVxTTK7qw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180032
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276911-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A2842B5B2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the binding for the USB3.2 Genesys Logic GL3590 hub.
GL3590 hub requires 1.2V and 3.3V supplies for operation.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 .../devicetree/bindings/usb/genesys,gl850g.yaml  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index 9a94b2a74a1e..d8ca9fe5a593 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -15,6 +15,7 @@ properties:
       - usb5e3,608
       - usb5e3,610
       - usb5e3,620
+      - usb5e3,625
       - usb5e3,626
 
   reg: true
@@ -26,6 +27,10 @@ properties:
     description:
       The regulator that provides 3.3V or 5.0V core power to the hub.
 
+  vdd12-supply:
+    description:
+      The regulator that provides 1.2V power to the hub.
+
   peer-hub: true
 
   ports:
@@ -69,6 +74,17 @@ allOf:
         peer-hub: true
         vdd-supply: true
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - usb5e3,625
+    then:
+      properties:
+        peer-hub: true
+        vdd-supply: true
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


