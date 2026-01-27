Return-Path: <devicetree+bounces-260010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILO0NtXfeGkGtwEAu9opvQ
	(envelope-from <devicetree+bounces-260010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:55:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91842972E8
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C4E1302C360
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6FA35CB86;
	Tue, 27 Jan 2026 15:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U/YzeqHX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FpjoKS1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39090301474
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769528867; cv=none; b=iBlgUsn6xsh4vtZmeSfJt9KJnAU6SebKzwyEz7hNjTa3BZuDlBh9xXfnAFo1h1H0YehlU137hqthwhdMNRTZ94HeW1/Mu78GB4gNYhSLsC9DxSnL14mFNfq+t7XOtcBVAAn3UmQf14SHVknecwSXWjltSAjLfkTf1g39pa3TqCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769528867; c=relaxed/simple;
	bh=dR8YbjjwEoWOvKr5L8OE5Xjpb1N4LIlErSO/VsIaOOQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ccW6O50PsFOzSmKQ10XlHZ2FeUyriwkbp6sMhltajgOuSpze0vECdZmTaHuRrnMpoH+efuVZcyOze9tt2NB8AKoIODjCk+VG5gtd8z0TZUTNaIf/vpAn+A+QgrplQz7cRbu9CqUzg7yQqruhHvvVCSFnAk8r3xXQfksVNls2Y5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U/YzeqHX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FpjoKS1F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAEqaH184939
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:47:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=892eAZJONFiYYejolA0Vyg
	1MNw8Nm8mdoY2IhQYM534=; b=U/YzeqHXksaxYujjAmcaTKDD648n83el60HxeE
	nH3s9L26R6H1ezsYB8adG2GPU/Rd9tNh7DUUyf/lVmaOC3dC9FvEODSIA3r3QDi1
	AzjO7ntUdr8ysiw1Vb8EeHcQsUeZW9Wty2WsubwPvS/mc2YmwDcLF3Y2BC/agw5M
	o3G0P+ajGVazGGm/44y8uv1x/pbjq5sZ1S3VV7cqGmvFzmYu1jr3QbWL3fi6jutU
	rzH2BtydVAHfhiZujXIv1+QAgkn8A9Dvk1ac4XokH//QpSEg/mnt8P2b77LAIoSR
	KnruWxXQUU9Jc7e8R+cyMPtcotBblgij0YhNQRKVYG+Eux0Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9kn20-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:47:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bb9f029f31so2061820385a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769528864; x=1770133664; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=892eAZJONFiYYejolA0Vyg1MNw8Nm8mdoY2IhQYM534=;
        b=FpjoKS1FdB//GWRpby6hblT39HvENK/iK9DtLRqBJDFkUCzqtpGzhuRHAbRz8NFq1t
         L8nTsGcavXTg3xxGcByxJa0jhQrux0lMzllNnzNL+7Bb5f2TVnsKM9j5Wfs6EJl0KVY9
         IbWilpOk9bl8G8PRYKLPrPJ08OlXV2jPubD2XV2Lb0Zy/i1MwmxxUJXLM5GP5V1x9aim
         FbJfEAMlBC0QZ6hRKE52jgHNS63FrQZBqaG7G0cDBYSsdGAK6kvGmTOURQ7GZbxIkJ7f
         LGczCa0Hb3GqG/HxTtVEMHVY5Vvyo9NvqrSs+wjlVyjrOt7vhV7DXbY9LS2kJqZbKj0N
         C3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769528864; x=1770133664;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=892eAZJONFiYYejolA0Vyg1MNw8Nm8mdoY2IhQYM534=;
        b=HxTPBpBWh2jKa9pIeszlIHFosi8o4bXhL9EkepoGuykohtXF6OZpjLFXZaY9qdWNKH
         PUGTgHlcwibD9e5e9JlcVML5ynZS3ibC3dg0ZjSfdjHBdkcrzXpAth4OC6TJST1WKEhr
         8AxteA/HQTyDgJ+zog6gkon2HCcs8FH0vhqYkS8m3lDvNyRk1B0LvzVuGSwQ/FIU+bJa
         WV9eoVViI0vIM0iHS1nOrOBPW1XjNyb6t+O4wd8FGBFHvV3z478w4nuun/Zbhb3fsUTa
         m2tgD6enBELJfllMOsrjygb0L8JbSs5XqOPSYS7m5kQQ8JjSUbd1MHwfMbMPLjTXxbEN
         kmbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpizoLkBKypZYsp+SUzA56V+i4ZHcrynbdavQn69RljNRgBA0X/BAlrGWtE8FBLsI3tB8cWLhFEJEZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzlXaqTy4GiZ1div0klg+h6crzc5PBp9SKbVAV2sp8+7ZpckWXX
	yYbN5zGKiVpNLMT7NMuRu5DCl2MpzSIuoeG8dlv8Oj3XSHle38mgrjNWua3M1vK9Qn0D/ycXdhg
	Vx6/j0SJFdXCKEQvoUPHsq71C2zy7XTzUGVtLZISiknleBnv8B/zm6gbWwRmWgFa9
X-Gm-Gg: AZuq6aILQ/UpG1Mbk1Jp8iJZf/Z4EDppqbLK9QJJLJFoIExC062bcBI9p8piS5RO8m1
	bCsUqVLRm172CFjXpSw02K12uUpNMf7n7ksL1mFIupwLOhh+41BW7esIr40KWZxI+Izt7r08Fj5
	otXO8HvUUTsHbfpCQQ4WmwFZBfV+gwWqjcc5v1Hf/Pfjl4ghYIeafI0aiyJW0Vq0cbJwYfSR3n4
	AZIDaJc5nvEbVauTuZbneWGB46jom4ygt6uqjnGQLOOqZzxB6ZbL2sTBRw+7+uHWj8IiYKOX7Sq
	sZA8y6YXA68VvfXsQReDRiA0t9P2FC6o4fKd/+kZA6cdt63IPpZ+ReUxjFcLPTLEhG0Lhy59cLW
	/cumnxQ2Q2qWckYMi1Q==
X-Received: by 2002:a05:620a:7017:b0:8c6:ab8b:29cf with SMTP id af79cd13be357-8c70b84a56amr274080985a.17.1769528864426;
        Tue, 27 Jan 2026 07:47:44 -0800 (PST)
X-Received: by 2002:a05:620a:7017:b0:8c6:ab8b:29cf with SMTP id af79cd13be357-8c70b84a56amr274076785a.17.1769528863816;
        Tue, 27 Jan 2026 07:47:43 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bf8sm38096465f8f.11.2026.01.27.07.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:47:43 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v2 0/2] pinctrl: qcom: Add support for Qualcomm Eliza SoC
Date: Tue, 27 Jan 2026 17:47:35 +0200
Message-Id: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABfeeGkC/3WNyw6CMBREf4XctSVtSfGx8j8Mi7Zc5Bqg2AJRS
 f/dgms3k5xk5swKAT1hgEu2gseFArkhgTxkYFs93JFRnRgklyUXkjPs6KPZSIOdfMeOxqiz1HV
 ZNALSZvTY0Gv33aofh9k80E6bZGu0FCbn3/vhIrbeP/ciGGemELZoTkqrWl1dCPlz1p11fZ+ng
 CrG+AWeLrj9wwAAAA==
X-Change-ID: 20260120-eliza-pinctrl-7bb592ad63f1
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1158;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=dR8YbjjwEoWOvKr5L8OE5Xjpb1N4LIlErSO/VsIaOOQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpeN4auRagjHlRQXVqP7wN8ADtBYsGvj2nlWdS8
 Zdk6h1ctf6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaXjeGgAKCRAbX0TJAJUV
 VufWD/9BHSK6ASis9TJXJxcPnbv328jxPqdmadYGirLRf3FBLTXtT9iVzoJr/Wfofjz3bV6XY6t
 BHyIDUWTpY67SvPdxI1viGIrChr/wJ7txUSERyNWrekkadCArTzkyyDwZacaBcXwXOSaGCkCCHB
 GHZ9MkMY0Wty/eXLMBz9XelsVi4t5sPZJs20mR10dQg5clFgbEu7rNAT8+Lu0IulGUqH8+Y2GDD
 M8AgTPmpFUWYNqGTFjcQnIxwf4aW5yOKDgX3m2tmrRtT61AImEYfhtTgK99BbmMBC7lS8XFzw1X
 ckUaGnzxwnOpbsvQVzjjeRRy4o66w1UdyDnmlbKOtlL25HONyyPfZh9F4SlOVxeF9vrtAE6R29R
 JKkM9do4/EebTqklQ7vKE1aFbBq+j+IeqpIvdFKOZ9sKrXhofYxssk3OQgN1H9Ue2+uK+s0/ysW
 qZXr7gYz0MPPoPVHL21mUzP2cGtg0F2bvWGIDVdy/eH3/cCCdOGGMQNv8KIethhDDVx596lzYKU
 qZ+4fwZQK3h/z/6HCLEZ+PjEDj0Gnxx67dmZq/8qMOvzSqwnwpImp2/WmA1n20WOGiWsgCX4ZcX
 m1pOQj5WhPD3hGfozqHf4rY801P6OtUQsarmMwa0lss/2TOZApliD9yhfa/BDlDviLakWvDwkZs
 P7c1asPsrxZxCYw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978de21 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8
 a=kyDXY30zTszPq_QCVXoA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: GiC8GiJMng0M1CIngnnN6HEbcxCr1Hm_
X-Proofpoint-ORIG-GUID: GiC8GiJMng0M1CIngnnN6HEbcxCr1Hm_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyOSBTYWx0ZWRfX7kSW54eInAkd
 5xt9JoxDUv1PlAKJhSJ4N5k509fHkE0dELjLZPWffy2Nw3/dSdRp5tntzoH4z01UKlgWz0zcwOL
 9DRmIezVpwGIqupmf6IQCMpnYMs83VUwNreTT42ebKqC6H2Ia/ZWBN2IKg2wOSrIMkejP7CTu0O
 owcWtIpbIfmQRmCh/wt/xpEQ0dEWpR83n4zit8ESBtKH4glL1BFQSg+3Xe3U55k9OW4w+jUtAhY
 Dy6FMiMviDx1Eem8XCJ1zorHJ7if3+jx/5LvM7yi+D0qsbSZaQMXmhVV5SB0829uLw+5rf3g4Ot
 hguQ76qCvfKSt3B42hESuR3zxTXBcicFcqNQkBtDavQhZg170t+rZtAVxeKN+7nPyxAG+1BxMg4
 rPNwqMKAkwUPIqVqmuEAEEE6qGBnJxhQu8d1nlrzMO39vKZlL93/T/CztHlDnf0C6a/dIX3wwVZ
 moZYI87wM0mjbKgOneA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-260010-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 91842972E8
X-Rspamd-Action: no action

Add the pinctrl driver, document the bindings and enable the
driver in defconfig as built-in.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Rebased on next-20260126.
- Fixed the gpio related properties in the schema, as reported by Bjorn.
- Fixed the SoC name in the module description in the driver.
- Dropped the defconfig change patch. Will send one later that includes
  all basic provides.
- Link to v1: https://patch.msgid.link/20260120-eliza-pinctrl-v1-0-b31c3f85a5d5@oss.qualcomm.com

---
Abel Vesa (2):
      dt-bindings: pinctrl: document the Eliza Top Level Mode Multiplexer
      pinctrl: qcom: Add Eliza pinctrl driver

 .../bindings/pinctrl/qcom,eliza-tlmm.yaml          |  138 ++
 drivers/pinctrl/qcom/Kconfig.msm                   |   10 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-eliza.c               | 1548 ++++++++++++++++++++
 4 files changed, 1697 insertions(+)
---
base-commit: 615aad0f61e0c7a898184a394dc895c610100d4f
change-id: 20260120-eliza-pinctrl-7bb592ad63f1

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


