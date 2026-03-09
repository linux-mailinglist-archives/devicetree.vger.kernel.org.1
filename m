Return-Path: <devicetree+bounces-273105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAK4Kasur2lzPQIAu9opvQ
	(envelope-from <devicetree+bounces-273105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:33:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 29997240D85
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:33:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7868B3014413
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF3936AB52;
	Mon,  9 Mar 2026 20:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JjPS25cO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="euZEayw4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1432258EFF
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088423; cv=none; b=U727bp3Wv9sWI0qqdXeq/7rydFd8wGegcGPFBvs10NmGiwNJFT3xaYUS1EuAvT13T6hZE7ObcU8Jza8YgIpVOajGeJ3By7qzizjaa67AxS4QMIXX6nAd4CozTeYmuKrqXB3AJ6HIB7gWJbuQpRDt1PgVAGAigHUViydvSlhKaX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088423; c=relaxed/simple;
	bh=aCDVTUxh9JogQ1hy2Lkd6pHJ7gHWpePVPTc1pZmzoL4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MnThBEgTsqqMTBTu/I18dgLS2ZtV3ZggBbBWiO01EHMu9kkqKFB0qb0e+miwNJ/FwNmcfSrsX8SWtS5cwM2nXOAn0pEWf4fHw/jbinawpCojPPhrZCKqq0ZA/Txx5qtAwns4UJdQTHYcnivErpg4ssB+PxOQ8J1sXHtDuGnJY4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JjPS25cO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=euZEayw4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HC6YR1203810
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:33:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Pn8uTGxSK3j
	IfZEqYoCdq5gvAWFHg5kvAAHa3xK37G4=; b=JjPS25cOSsYrrBx669DzL7wnJ+B
	b6xgQ7WlB+CRk7mwwuD6Gh+rdyA8kES0OHsC9w5w2yylFlvkx5UbAACtq03KBSZI
	nG7gev9sAjeZ+BeYrkz7xwyoThpVWTJqSR3NArHypAdgmsKdADETEe8NPpOCFnn7
	de8qP9vXvudVzJ3PeRkjpnnzltH/1Eo7y7zr9WkdrIAIjz3de0UmDzSKHnsRJviG
	lS6ebhndz6gHzlpCMCMZ27sm9ZNu5/UTX7j615wy1hk2NJs+XAsCuo0+BWwa07uD
	+z3pD4vJqBEqJnKZ0zSqBIZZLkrHhJj1dF3oUGPCCT4JLZBy2DuAEZlxyLQ==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct03299bm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:33:41 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d4d4db1523so54438048a34.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088420; x=1773693220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pn8uTGxSK3jIfZEqYoCdq5gvAWFHg5kvAAHa3xK37G4=;
        b=euZEayw4xsITrHPMBN5vaso+cnQxhOvPKjVwU6i4/d1MxkWm2zCS6iUVAOFXG8935B
         nYCLdt5BDQiJ1pac55rHoroADe6/FA5L7hF9Ipv8fBkDiIvQhHUaGDNjoet4Lyw5ilPY
         DmTQEW7RQK6amyfddeFN2kDbOQNCXidB49LTsXnPfLtaEp0urCWXQGAZudZ3P/wfIJE5
         BL2XvdpWiwjHMK7X6Ygs8QocZSX2T/j1ad9ogT+XZF66GypED36GRYObia0R9UscJbDx
         Jq6t5YnyvjPZWfpzbWobiZas2dbj/GYlgKdmCpPAUBd7iA9ipmR7uzV0BTcWR9MyoJS4
         /Rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088420; x=1773693220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pn8uTGxSK3jIfZEqYoCdq5gvAWFHg5kvAAHa3xK37G4=;
        b=bXiQX4FfAiK9S4m0pXyVDfrk/tSS6W4c8nNbPl2TrVW/yR/zk4gS9N6uW2cHAsdmDd
         cs9sXmTLzn76s+H/TcOyyNjqCWIWTZvFHds878+oPYwlJV8mnzr0qGGPgfYIJxNGSxgx
         y9h5RsD6nhR6B/GRWO9fru3XYQJ1gvOdGt56nSlwrtR0MCfRaxGIwpzZcStPUjR2Y14F
         g4vbbidrksrRCtL3qZili7kGqdv3m5JWDq/rc9zPMDV5WKm1kL7+VCQhPEonW8YDmy0R
         QuFwaa5aUPgkU1DLnXZU0HtTub9tr+jBbCLR3Qcn5N7sStR3ALnm0vp+x6rIkK1yswIp
         jJuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUj+NwJXPzQPJCse022yK2oy8fx7ZEqTzVs01pVdbv86V3sxnllsOA1nvsLN4G3jkIQ20DkM44foX/l@vger.kernel.org
X-Gm-Message-State: AOJu0YyMczGXFsxr/bDLyIGiD2b+q3RMt9Se1HyHRuimyplHju1d0uwW
	ACCM8/kDXtLJa5D/Nmqkb6mv5aO0wSituy1O513tGVplEYz6W87hM6cXoZSnAuj8g5vuw6PMUqs
	VLUJ4gVmGQewUq8220n5NGUwZvqKOCeox330yk4H/1jIRXCc2Mw5qopTul0mCfRte
X-Gm-Gg: ATEYQzwwy+d3lo1LWzo7g1WExrNfJ0aehVBDcXIyUzynKZiHKKRD65/5ju7hlqR/V7s
	RD4UewdL139oAhYy/D+5X4d2Wo48Q95uayfzCuZ5G2zOrd3xIsO8miUg0L3p027As3DSIn5T5wi
	vvY3EAFGqEITpolqYu/1UnoZT1OBKVC1Y+65wvkxpmfVw1QCbroNt95UY8FKdvtmjZ3NjYUNfdz
	G+zDvzWp5ACQjX7bS13ruP76mz4oQi5QyOFs1l49ia4icVJvzwYlQGf7JgGAXfxq0+k+MVxYglZ
	CzcAOz79V88oacwd/hy1bKvU8O6r8UNy3noasQqNNbHxMBPxyjc3xsLGq4vyGYydP7DxUv23z0O
	Chia9a5kFI1CGuymriC/RJqePZ6nB3b7RrEaKybNNRf1DvPP7kMOUhZ3GUUicXgOemmcawIeDub
	E=
X-Received: by 2002:a05:6830:6001:b0:7cf:db31:1b7d with SMTP id 46e09a7af769-7d726e75a8dmr7897574a34.5.1773088420558;
        Mon, 09 Mar 2026 13:33:40 -0700 (PDT)
X-Received: by 2002:a05:6830:6001:b0:7cf:db31:1b7d with SMTP id 46e09a7af769-7d726e75a8dmr7897560a34.5.1773088420207;
        Mon, 09 Mar 2026 13:33:40 -0700 (PDT)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74885b5a4sm3036494a34.23.2026.03.09.13.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:33:39 -0700 (PDT)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC v3 01/10] dt-bindings: soc: qcom: eud: Add support for dual-port configuration
Date: Mon,  9 Mar 2026 13:33:28 -0700
Message-Id: <20260309203337.803986-2-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
References: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX6pS6LtIRzdl7
 Tqc4LEJ6TV3Ko1o4AIyUppIe7qLxlYyw7QSJG8nem+M5uErh//J0qKrNIPSFRvcGYWJ0uMW1PE0
 fp1Vz7QJK1iI6uXj76OXG4NHpjWFmfgSsLO8kO2vQ7S925xDDxs8dWXs67djni0BP0x6VwNtGWp
 U99AYjtZRBK/jm2y7jXrDPGafiGYsWodyBX7etDm8IOwes1PhrRN8hI2b8YikWLXqETQhSeHUq5
 +OBqYJdxUYGaHr08Bes6V3kjk1TieOBWkYmxMebQfgEE1Ju0btVq9+BxHLZYoT1jkxPmPzpCTEu
 XmyEZ/JWWzqHlYecf2SRMqa+7eacdWvdcPCs0TAmqT3pSMEZd96uVTcZpRXo1qQR7L9OI2Bgw2D
 MPWXpb5nxXOaN18OIFonvLFFmHZsFBjRH58fNqqmEzmjK+R63IYJ2Mu3ZvKBewkWwdNMXYFbhuM
 qPW2d4znMYBghr8oE7Q==
X-Proofpoint-ORIG-GUID: CRxt-XY-1Ijek0Mtpw-eCnquNEPR0Ctc
X-Proofpoint-GUID: CRxt-XY-1Ijek0Mtpw-eCnquNEPR0Ctc
X-Authority-Analysis: v=2.4 cv=WtEm8Nfv c=1 sm=1 tr=0 ts=69af2ea5 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=COdb67ocejTnp4Lj0MIA:9 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 29997240D85
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273105-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.1:email];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.3:email,0.0.0.2:email,0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

EUD hardware supports debugging on up to two USB ports depending on the
SoC configuration. Debugging can be selected on either the primary or
secondary USB port as controlled by the EUD_PORT_SELECT register.

Extend the binding to support dual-port configurations by adding port@2
and port@3 for secondary USB controller and Type-C connector connections.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 .../bindings/soc/qcom/qcom,eud.yaml           | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
index 84218636c0d8..af89b9e0be6f 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
@@ -32,18 +32,27 @@ properties:
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description:
-      These ports is to be attached to the endpoint of the DWC3 controller node
-      and type C connector node. The controller has the "usb-role-switch"
-      property.
+      These ports attach to endpoints of DWC3 controller nodes and Type-C
+      connector nodes. The controller has the "usb-role-switch" property.
+      EUD supports up to 2 USB ports. For single-port configurations, use
+      port@0 and port@1. For dual-port configurations, use all four ports.
 
     properties:
       port@0:
         $ref: /schemas/graph.yaml#/properties/port
-        description: This port is to be attached to the DWC3 controller.
+        description: This port is to be attached to the primary DWC3 controller.
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
-        description: This port is to be attached to the type C connector.
+        description: This port is to be attached to the primary Type-C connector.
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: This port is to be attached to the secondary DWC3 controller.
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: This port is to be attached to the secondary Type-C connector.
 
 required:
   - compatible
-- 
2.34.1

