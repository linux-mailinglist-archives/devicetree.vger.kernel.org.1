Return-Path: <devicetree+bounces-262060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNVnIayQgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:07:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A90D500A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68DDA304812E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9E136E48E;
	Tue,  3 Feb 2026 06:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JiGN8f5w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YcInYlB3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50AF36CDF4
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098801; cv=none; b=coSy7ov1u/qSIVeJknY/fzCzg4u+q4iglQiHWzGGMjRL/mjIH9mfQ4sEWNtYIGb0RVDFIEGjtf7fs/VP3dEi6TZtLKoK1eynBSlZ3Sj0LE3RxhPw61qB29qA9L78aV71Xm+zEWaYbzxn+BpSROEJv03BJPxlpa9i+Pld6/zb93g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098801; c=relaxed/simple;
	bh=eH8r2OJtMCYgllI4zHwUIcr1LC1eoaIGEiyIlXtdVqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uJV7i1k/6AbstOKDK7Pc425pMrujV1wH7hoVaY3B8CJ4Q7+kwKtYtWA1DnSr9R8jsBUnh0aknEGAwty6oZhr7Y7V2M9aYArR41zSvL96iC7EaUcD13bLLqdtduGe/ATcQKdvgJcmuhtGBv08ty+MmLchvrllDmP2DwTjp3YOupE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JiGN8f5w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YcInYlB3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6135knUE3459143
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:06:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XMQvaYxNBv7Uq72KbDA4JI6fY2h7Ap5Ef7mb2dwbHdY=; b=JiGN8f5wfiXqxaxc
	uM9Tab49hH3rw3vaL8xvGtUPceGhYacE/at1w5qW1Rn13cs7e+CiLeLp35cRyUED
	EUxAULs5TAP9FMNsAWBFNSnW/4gnqIoVl2CMDLugyPpvilfrAa9KFFBmgc3y9fwp
	NMOCJRdhOk/1CERliNTRUd1fbYtghvzdGy6DaNpkJV+WsVIH2mkuXw5TH93mSxKU
	L0V9L+mQgpf93jaC2uYCKoYWgV8TcbdUSa9fQEXRDUVwohLT4X1FYmZqWynkLEEJ
	1ppT42ZasCxGL5qXavIZbNh1+X9di1TsGZsxEa92LPDoIStLmOB6nQAvFSD+agVp
	Lc2fQg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbk30m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:06:36 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-124a95b6f61so14625935c88.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098796; x=1770703596; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XMQvaYxNBv7Uq72KbDA4JI6fY2h7Ap5Ef7mb2dwbHdY=;
        b=YcInYlB3Y4TMePTQN3kq54TWnQ9WTXPapfAEe5fIvy4W8wNr002MxoWZ0BwwCnKsV0
         eE7uYx7dXOJh2uRtI+iCJJDuXmEg1bQsFjKJAn8nc3TmDj337IH6WS3D0c/TjimCCuyC
         yEJCaDx8cfQ9YrHJuaicpibgFsXG1Aq0UuNMPlDlh9upnzc59rzOhfQBcFycVsPOaknT
         VqdgVB4sFdNjAPkE+/TEyLB/4ZAdags8iZbWPoN0d8L9g3LI5KYzDj4HWIPAgtF69vWT
         OfjfH+HzIX32vtDQsZik/4x1S8uRivojSWPwwyzfFvESp2RYr+Pp8qC4C5DhnHZMuEbK
         rm7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098796; x=1770703596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XMQvaYxNBv7Uq72KbDA4JI6fY2h7Ap5Ef7mb2dwbHdY=;
        b=oqYfbpo10iNUMXqmjLzDAu7KXZwrCpx2vV63mtQ+eD5mHuM3JQOn1TLYO3vZSMEBx8
         I5Z1r6zIJBZMF3NpM3BrlQW+NDYNxNHZqLFYXBzpnclP3mmeFIC2PPZNJ8zMsUtvWNuJ
         1hL/W7JqooGmPHCL2HQuEWW9nrcdKC+2LqHoru6v/yiiCwgyH5n3U6EsoK711yZCcWZf
         fulTZ/wxTca3XnA/7dyVdpoFHE99zjg5X3hm0ebNicSBRFPsbkAgaIp+HMVXLKFvX+16
         hjbOnF6VC4O/XL+SBOvs5zWBUlavxq3SvqaAVbFvw2u/AIpeFkM0YcbwMwkCawj2/8Z2
         m7sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdoH00mPawbR6xJxToTxjNSgwO5Wp+bn7kPRWep1dSa+ABSgq3NBabUnkhPVmwq1+VLGo7BEROC3pj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0ishjtDRobRcD6XNO4KOdNDhOUWDq3X0PrvK+SNcSn3u3SoD4
	eOmc2JhOoJtJDySLce4r7HLYzjD1aQ6Lxm0HOpCRXRInTlPByM2VIq8QwF9T9/HtS7GrkpvYK/1
	oSKQnqyN/qYtxSS9Y01NmfIEnPUo9fDMr3SHMVxbcIW11uryMCEdpKndribg/oJ3F
X-Gm-Gg: AZuq6aJaUHaUBKt0tbtY8enQ88eRowUVxVXW9RLNdhv1ULEQ5O6hdVCo+JWfNg7lu4F
	dQl/RvrtvsyyxJpB4UANbvWMRfHXkYA9R3OAMAdHtWKlBk6av1igZehS3+EOzdecbDoU+Yb+W1h
	4MG+DNzdxVgTSoEK9DJdisjgJ8GtFKCJaDOecuLBgvBw+THyDkkgy5N1WsDlFilvXWUvs4JLQwt
	ApsHiV1AokA81VIa3zYqAiaFdHlLNwZeT6UVFU0notOH1eS3cWyxf0kv1eUGj02+ooBDrGM9ThJ
	hy8YekscwCO15ltVdZ+9dKGTCoZhk1M0y1MdJhl+2i3Ase2KBo4cRlQ9OfScBWFNEtImNVExEyP
	8Y/CAqZKZiRZjy54BcdKN5iGjXARW904QnKj6+a/tUvpi96fuRAxBla/lvAx+
X-Received: by 2002:a05:7022:660a:b0:122:153:d161 with SMTP id a92af1059eb24-125c0fa713cmr7051319c88.17.1770098795679;
        Mon, 02 Feb 2026 22:06:35 -0800 (PST)
X-Received: by 2002:a05:7022:660a:b0:122:153:d161 with SMTP id a92af1059eb24-125c0fa713cmr7051302c88.17.1770098795053;
        Mon, 02 Feb 2026 22:06:35 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8283def01sm417499eec.34.2026.02.02.22.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:06:34 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 22:06:22 -0800
Subject: [PATCH v5 05/10] arm64: dts: qcom: kaanapali: Add support for
 audio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-knp-dts-misc-v5-5-02de82bf9901@oss.qualcomm.com>
References: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
In-Reply-To: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770098787; l=13571;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=FN/C0JgEfkUGxO0ScMaU8W8gbfqsrDP9YrR20hfWJV8=;
 b=quNaBUhSPaHVTraGSoJUM3poyJAiCqmvT6ueTfDsTPt7C5GEtQ6ERNoohOca555O5KNOvdmIU
 We0xL6bx3TaCqG9f45KRUCQY0PG8TpYjndAe2jWNDRPTP7FVm6V/oeD
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: T6OiqYxcfhkCGN3vlu6AUMU5HH4j5x1P
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=6981906c cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fOvlSJoLLuNaJOMVFRMA:9
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: T6OiqYxcfhkCGN3vlu6AUMU5HH4j5x1P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX9BT8oaqlqdL0
 YWb8clhwolKIKRZb2NKn5NPlydCqNTO/U3+N23HEvShcOXZtD7N0qDYU83YAklW48rvagHw0P/4
 ZJhL+/J31iceHfFFrf0ihQi1GyyUIhKjbdQ5ar+oueVT85jChpAfY0zAqNPLeZlcBerS6YCEtSK
 eHQUd9behiv1KyxZFbdX5DUvCK/IULxnnTbF8sv4aoJ16DUymu2Zz/JpgL5HUVqzEORJLhxW/qE
 P8PCQJFSs0ycrGMl6KdOlW/IfOJAFNxMWgo/oCD89G2Qsm360f5oaXL0P529v9bntngHhXFL2W0
 4qMFeRZiR3/FGPfrSLAkqZgcXiOv0jYcaEjW2Eub1spxMWxwYvmGEA2klcUy/XR5vSibLd+67dJ
 ONHFacQGbZ+ZoXwSAihd/FvNLXZ8EDJ9JEf8r3YKTfhmTG+viJNoOqoSjKysb3Sg5SrGI7s3UV3
 VuamqWPjfHQM0M5wZkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262060-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,6ae0000:email,0.118.104.128:email,0.0.0.2:email,6ac0000:email,qualcomm.com:email,qualcomm.com:dkim,6ad0000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,6b10000:email,0.0.0.7:email,6aa0000:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.116.225.224:email,0.116.108.176:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 00A90D500A
X-Rspamd-Action: no action

From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

Introduce audio support for Kaanapali SoC by adding LPASS macro codecs,
TLMM pin controller and SoundWire controller with similar hardware
implementation to SM8750 platform. Also add GPR (Generic Pack Router) node
along with support for APM (Audio Process Manager) and PRM
(Proxy Resource Manager) audio services.

Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 367 ++++++++++++++++++++++++++++++++
 1 file changed, 367 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index c8f61200f261..050d47691f5c 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -16,7 +16,9 @@
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
 #include "kaanapali-ipcc.h"
 
@@ -2632,6 +2634,371 @@ compute-cb@7 {
 						dma-coherent;
 					};
 				};
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x1001 0x80>,
+								 <&apps_smmu 0x1041 0x20>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
+			};
+		};
+
+		lpass_wsa2macro: codec@6aa0000 {
+			compatible = "qcom,kaanapali-lpass-wsa-macro",
+				     "qcom,sm8550-lpass-wsa-macro";
+			reg = <0x0 0x06aa0000 0x0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK
+					   LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "wsa2-mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		swr3: soundwire@6ab0000 {
+			compatible = "qcom,soundwire-v2.2.0", "qcom,soundwire-v2.0.0";
+			reg = <0 0x06ab0000 0 0x10000>;
+			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_wsa2macro>;
+			clock-names = "iface";
+			label = "WSA2";
+
+			pinctrl-0 = <&wsa2_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <4>;
+			qcom,dout-ports = <9>;
+
+			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f 0x18f 0xff 0xff 0x0f 0x0f 0xff 0x31f>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00 0xff 0xff 0x06 0x0d 0xff 0x00>;
+			qcom,ports-offset2 =		/bits/ 8 <0xff 0x07 0x1f 0xff 0x07 0x1f 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0x0f>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0x0f>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0x18>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0x00 0x01 0x01 0x00 0x01 0x01 0x00 0x00 0x00 0x01 0x01 0x00 0x00>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
+		lpass_rxmacro: codec@6ac0000 {
+			compatible = "qcom,kaanapali-lpass-rx-macro", "qcom,sm8550-lpass-rx-macro";
+			reg = <0x0 0x06ac0000 0x0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK
+					   LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		swr1: soundwire@6ad0000 {
+			compatible = "qcom,soundwire-v2.2.0", "qcom,soundwire-v2.0.0";
+			reg = <0 0x06ad0000 0 0x10000>;
+			interrupts = <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_rxmacro>;
+			clock-names = "iface";
+			label = "RX";
+
+			pinctrl-0 = <&rx_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <1>;
+			qcom,dout-ports = <11>;
+
+			qcom,ports-sinterval =		/bits/ 16 <0x03 0x3f 0x1f 0x07 0x00 0x18f 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00 0x00 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00 0x00 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff 0x0f 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff 0x00 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0x00 0x00 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00 0x00 0xff 0xff 0xff 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
+		lpass_txmacro: codec@6ae0000 {
+			compatible = "qcom,kaanapali-lpass-tx-macro", "qcom,sm8550-lpass-tx-macro";
+			reg = <0x0 0x06ae0000 0x0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_wsamacro: codec@6b00000 {
+			compatible = "qcom,kaanapali-lpass-wsa-macro",
+				     "qcom,sm8550-lpass-wsa-macro";
+			reg = <0x0 0x06b00000 0x0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK
+					   LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		swr0: soundwire@6b10000 {
+			compatible = "qcom,soundwire-v2.2.0", "qcom,soundwire-v2.0.0";
+			reg = <0 0x06b10000 0 0x10000>;
+			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&lpass_wsamacro>;
+			clock-names = "iface";
+			label = "WSA";
+
+			pinctrl-0 = <&wsa_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <4>;
+			qcom,dout-ports = <9>;
+
+			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f 0x18f 0xff 0xff 0x0f 0x0f 0xff 0x31f>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00 0xff 0xff 0x06 0x0d 0xff 0x00>;
+			qcom,ports-offset2 =		/bits/ 8 <0xff 0x07 0x1f 0xff 0x07 0x1f 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0x0f>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0x0f>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0x08 0xff 0xff 0xff 0xff 0xff 0x18>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0x00 0x01 0x01 0x00 0x01 0x01 0x00 0x00 0x00 0x01 0x01 0x00 0x00>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
+		swr2: soundwire@7630000 {
+			compatible = "qcom,soundwire-v2.2.0", "qcom,soundwire-v2.0.0";
+			reg = <0 0x07630000 0 0x10000>;
+			interrupts-extended = <&intc GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 40 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "core", "wakeup";
+			clocks = <&lpass_txmacro>;
+			clock-names = "iface";
+			label = "TX";
+
+			pinctrl-0 = <&tx_swr_active>;
+			pinctrl-names = "default";
+
+			qcom,din-ports = <4>;
+			qcom,dout-ports = <0>;
+			qcom,ports-sinterval-low =	/bits/ 8 <0x01 0x01 0x03 0x03>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x01 0x01>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x02 0x00 0x00>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#sound-dai-cells = <1>;
+			status = "disabled";
+		};
+
+		lpass_vamacro: codec@7660000 {
+			compatible = "qcom,kaanapali-lpass-va-macro", "qcom,sm8550-lpass-va-macro";
+			reg = <0 0x07660000 0 0x2000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "mclk", "macro", "dcodec";
+
+			#clock-cells = <0>;
+			clock-output-names = "fsgen";
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_tlmm: pinctrl@7760000 {
+			compatible = "qcom,sm8750-lpass-lpi-pinctrl",
+				     "qcom,sm8650-lpass-lpi-pinctrl";
+			reg = <0 0x07760000 0 0x20000>;
+
+			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 23>;
+
+			tx_swr_active: tx-swr-active-state {
+				clk-pins {
+					pins = "gpio0";
+					function = "swr_tx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio1", "gpio2", "gpio14";
+					function = "swr_tx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			rx_swr_active: rx-swr-active-state {
+				clk-pins {
+					pins = "gpio3";
+					function = "swr_rx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio4", "gpio5";
+					function = "swr_rx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			dmic01_default: dmic01-default-state {
+				clk-pins {
+					pins = "gpio6";
+					function = "dmic1_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio7";
+					function = "dmic1_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+
+			dmic23_default: dmic23-default-state {
+				clk-pins {
+					pins = "gpio8";
+					function = "dmic2_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio9";
+					function = "dmic2_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+
+			wsa_swr_active: wsa-swr-active-state {
+				clk-pins {
+					pins = "gpio10";
+					function = "wsa_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio11";
+					function = "wsa_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			wsa2_swr_active: wsa2-swr-active-state {
+				clk-pins {
+					pins = "gpio15";
+					function = "wsa2_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio16";
+					function = "wsa2_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
 			};
 		};
 

-- 
2.25.1


