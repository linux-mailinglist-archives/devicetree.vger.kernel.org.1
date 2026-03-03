Return-Path: <devicetree+bounces-270650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8M0fNgARp2k0cwAAu9opvQ
	(envelope-from <devicetree+bounces-270650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:49:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DF91F41A9
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:49:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE01C305B35F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 16:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628613264D9;
	Tue,  3 Mar 2026 16:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X8uDMbjc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mf2scaBF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138E2370D7C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 16:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556204; cv=none; b=QcjxG3rfpSw4XgCpsebf/d5tsWLRQ6E8lBpBcgN4iZsxbNmSoxZMzcA0YdNUnGeeHRXgcLB008uhPjt/Pr9+1OcBsT7/pRdjpjmaqJIpriMH3CBKMgbmdjIKEGgm+rlWgRn1yEvlSdNASfG7um/tiVVOlwSNnsbFxGtTw+WF/i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556204; c=relaxed/simple;
	bh=nB4EeXHFFUYnBjUlly9M7et4YOc5Tz7Rn1gcNBR5gvk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=a38m5+JwsY9OBo5fLoCvkw2fC9Xx6sMY+Aoc1Tt7rqFjdux6erGQe8X7ZB5V4P13ka0vfzxn+6j7oEWQFcqx4jP0Yu/kn7GItehn/8jV8u+oW9l7wBdu+96GFKqABI+65bVPIeAxIhTiRBlRBY9hFCj/LxGkgUqAM+zUws70f/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X8uDMbjc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mf2scaBF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mrSY3099626
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 16:43:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=sTqT1VkZxaPh+/SI7/WDGbxw5o5hnThVAUb
	ciJW99Ts=; b=X8uDMbjcBJV3WK180OZshT+aHGhuVAbSwpKSpkuIIQ9ed3MQQij
	tb7Yfom12OCWNyNhyjbWe8IuFiQ7BjfEvqinbefhkvqA90/Vus3FAqMv71gGrs0p
	bB64szAiI22qV9vTdY9+lRZ7I5dm/mmoMZ1qyY/hK6Gajnl8M7Au2En+hORzs/Op
	jE3jF4mqS+q5k9+JXGy9lEU2LansgMgguH067fUqfeATfqQHIG5uzRF9MZAukT9X
	ZSJBOL9JpUJQxxluQZfpIGfw35/u2gNcBZRBSw+B+P5mZgLyQT3bhm4zdHe4DIDd
	4pipGcGDSwB/dxl25yFWUPLNaqQVTrW2bMw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu1p8q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:43:21 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-359827e4acfso1400935a91.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772556201; x=1773161001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sTqT1VkZxaPh+/SI7/WDGbxw5o5hnThVAUbciJW99Ts=;
        b=Mf2scaBFZfPtidLLlz10pHadVY2HzkiQ3VhHBSt1Fm9c7JsVpAHdmh4DQyVu/3jhV8
         37OarJPpCy1jcEqLz+9eRQVxq19TEbJJaVpUbZpKHSIGIDwL0Fjc4b9iV7mewrI+/bDx
         nHDSearYl7wJBscDWtkhkCxrIX8DcSpQYg7frYC30VsJyhAQ6IwK3NsF6w1bLTL2gdYv
         giEOo6Fv4KmL8+FBOir4A4MqgosAUWFPZBT27dxDSifduhuPOKQ9kw61sdR2SRXgqZ8v
         236j6XK4/zNSQudp12a3s/scHWcTlepPfBOFI7oXslbVstyR/UWbbsA2v82IQxVz9Gsf
         emQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772556201; x=1773161001;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sTqT1VkZxaPh+/SI7/WDGbxw5o5hnThVAUbciJW99Ts=;
        b=erlc0xq57r9JnC3Pryiy7WAYtqDsRDQ7LBcxuFjoeo8x/M8pZNbcZk//mSmEWHKCal
         LwvyUg4ZcHo4m+n4bhA7hWEm/H2CWND+CwGajY/QdqXvPfFQRq2kjkYQ5hsuXCeDLMPk
         a6G0XeVEOrgkuPW/xrom9KtiZLuTWMrfieDVWcx9xJJLaqvYyUEAHPwjpH5yPaueIa3o
         NgNlyvNp0wV8Ji/jyw7+zJPDZnHjR90DbaEYubPUVp3GjoEeqFyublEmE9lCrS7j79bJ
         wp8FYQVmLJEiQXdUirZYLgYqJ5GA/z/Us7XHVlXV28CiaKtnrXY/HUb7kfWCc+Y/sLjO
         KRGg==
X-Forwarded-Encrypted: i=1; AJvYcCVZt/TUJS+TIBm5I32YwPmUqrrGgj5+BnyxZzWszbfauC2XkJuSxPFXuiPKcOSAo7FVBa7cX44xa5W6@vger.kernel.org
X-Gm-Message-State: AOJu0YwpivOAfeYDmufk/ymjoILiUYbaH+6sUBWzfCN7IxUVHF5IsJK0
	67cT1/VhPw3yE/IAe2P+TnFTjuW24meogYXTjtPAgYmRIWnUqstuWTFaOOJU2u2D+7JZ6Osj8NI
	Fbg4ZKz7Ej2pHesMXZkNLYyu3ttKcFkOBJPk3xH3nILpkKPYsseKYZT19pcrGuy2N
X-Gm-Gg: ATEYQzw4t/N+VOt+amQLPIE1HZBbPcZM6Vpm7eiduCaYTVINkWe/5k9xBXzcMpOLW9q
	M93p4AWwzzn0k1JD4mXzhTnR+cNkQkDdMS1Rva2w9b4WRmruKcY7fUxa+RMz7Rgyc6rBlEupvNg
	dy8CztnIm1U7eCDLO37jsCdRrLai+SuXgwkr6sCFSxWjU7ZB4J1c/ItcnTI9RyobqRsMCNyXAqe
	KQwIb0mqnlGsgUDQrmIRNqkUTtYpO0jD7WPRjDtsFFwn/EipsWzhWtvuOrTkyHaVRarUzEUYA5r
	cGbiRHSKKuTRRMVLX1ABCLNeiJD4tmK/O28Lx/24zPdvEu/hH1lG7fiOiT4/LzavppqprVYp1lW
	oVdy9WEaurh/jRme0+T3MbO5tK/teI9X4c1wXJdlEuK1+TpxA1rXw
X-Received: by 2002:a05:6a20:3d87:b0:334:8d22:f95d with SMTP id adf61e73a8af0-395c39f6db2mr11125014637.2.1772556200842;
        Tue, 03 Mar 2026 08:43:20 -0800 (PST)
X-Received: by 2002:a05:6a20:3d87:b0:334:8d22:f95d with SMTP id adf61e73a8af0-395c39f6db2mr11124983637.2.1772556200327;
        Tue, 03 Mar 2026 08:43:20 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a048615sm16153508b3a.52.2026.03.03.08.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 08:43:19 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: [PATCH v3 0/1] Introduce Monaco EVK Interface Plus Mezzanine
Date: Tue,  3 Mar 2026 22:13:13 +0530
Message-Id: <20260303164314.886733-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a70fa9 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=cOZz2FG-nCae4-kFyaMA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 9uJ4xwb3DSfeH5f52HauMUaY6qcswzGb
X-Proofpoint-ORIG-GUID: 9uJ4xwb3DSfeH5f52HauMUaY6qcswzGb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEzMyBTYWx0ZWRfXy48DW/IzT9q5
 //pBngk3i5WaCPXh4istlPaTVe1plKrnt+dqfbcxlvxMPCrXu2nl+/7fNy1ZZRCYmBnvAVLkuTS
 qJty1+gD8M/CrpYNCjVQeTllK0z+vbdT07QyDa7xwaGxZFmh32NXrc12YI/FVB7/QJiX0HyzGNP
 dAM/LmPtUSZLE9hBSMR4RQJJTqwZHRLEENVlOudkv2nGYycENC0v0pqDhdV5iHlT0Zah+yclO+G
 cYgCOCs6BgzGKIPpH+JampxWfbXPkfhnxXw2DAAaZwiaxGuKiel5qNBNfOHVxfRbNP0T4xQ2FtX
 1Oiz8UBYENL2k65RxwuvNIc3dr/t1xerOe9pc8ZqfoNcJGS3wjlULez0zihTsI+XUQsG1q+nmz0
 zn++BoWMWzrzrEqDuRzLDkp7GEMLb3CcyGsLPEzsBOR4ZDawBnJGMUYtJTRczDv5MgPS3pb+AYk
 HSk+Wl7gxgaWl7G42Gg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030133
X-Rspamd-Queue-Id: 55DF91F41A9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270650-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Introduce device tree support for the Interface Plus [IFP] Mezzanine
expansion card used with the Qualcomm Monaco Evaluation Kit (EVK).

The Monaco IFP Mezzanine is an additional add-on card which can be
stacked on top of monaco-evk board to extend peripheral capabilities of
monaco-evk used for industrial applications.

It connects via expansion headers on the monaco-evk and provides
following peripherals :
- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP is routed to M.2 E-key connector, intended for WLAN endpoints.
   - 2nd DSP is routed to M.2 B-key connector, intended for cellular modems.
   - 3rd DSP with support for Dual Ethernet ports.
- EEPROM.
- LVDS Display.
- 2*mini DP.

---
Changelog

v3:
- Add fixed-regulators to satisfy what is required by the bindings
  instead of representing the complete tree which is present on the
  board - Krzysztof.
- Rename fixed-regulator node names as per current format
  recommendation: 'regulator-[0-9]v[0-9]' - Krzysztof.
- Add comment on why output-high property is required for tc9573 pinctrl
  node - Dmitry.
- Update commit text to communicate USB-Hub, LVDS display and mini DP
  support will be added later once the dependent changes are
  available - Dmitry.
- v3-link: [2]

v2:
- Change the DT filename to "monaco-evk-ifp-mezzanine.dtso", also
  update commit text and cover letter text to reflect this change -
Konrad.
- Remove "status=okay" property from i2c15 node - Bjorn.
- Remove "power-source", "input-disable" and "output-enable" properties
  from tc9563_resx_n node and add "output-high" property instead to
  align with TLMM supported bindings - Bjorn.
- Remove extra '\n' from tc9563_resx_n node - Konrad.
- v1-link: [1]

[1] https://lore.kernel.org/lkml/20260210103821.4169-1-umang.chheda@oss.qualcomm.com/
[2] https://lore.kernel.org/lkml/20260222173545.3627478-1-umang.chheda@oss.qualcomm.com/

Umang Chheda (1):
  arm64: dts: qcom: monaco-evk: Add IFP Mezzanine

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/monaco-evk-ifp-mezzanine.dtso    | 149 ++++++++++++++++++
 2 files changed, 153 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso

--
2.34.1


