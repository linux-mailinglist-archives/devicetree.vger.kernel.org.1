Return-Path: <devicetree+bounces-259079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN+pCu6sc2nOxwAAu9opvQ
	(envelope-from <devicetree+bounces-259079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:16:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8E78E40
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8C55307BB02
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B7531E11F;
	Fri, 23 Jan 2026 17:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L7smWXYh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vh88lI2T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8BB30DEB7
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769188391; cv=none; b=VkGMJ+AkBDuCsr40TDwgHAbZQAeNP4sjAm0I6Nux8ImeBw8N58yOjyZfO5gBvGo/XOu7crz5Ezf1YAqS7PkSJhGP/4IgQVyp3IURcFYzdM1YK5BLBflBCnuDIqqXwMCqoWlZ3dbUogmVC47pJ+bNsqM7vvS2eqrrjRo0oxAdACA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769188391; c=relaxed/simple;
	bh=2Z6xwhKJk/Agr/Tfu+uZyoFFVZqx8Bbb+H//Pozkx0k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kEqcIQJ3/nzE4oziHFuEm5drL7TOe8EAmEdDoB5o5iucF5sSzMSgi3lnPz043ebHQToBYHv6mp3fbZ5OQGTpxrYVuufnGq9DKt+wffAvNHgecH/AzfJc0LPwh1joXXgSxwMy9MROhnBHoxZOkqH189q+O9V4Di6iSiEoFba6WMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L7smWXYh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vh88lI2T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NCgSUq322606
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:13:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Ra5z7RK+ckZlI54IIzTkyl
	AtFlnUN13RpB+yLrim14U=; b=L7smWXYhklNSX6Uyfo7p04dCDlDokgv0TYtTSW
	Fa89VFxtpWoDrB6iLkH798WDB0dqjNX4jQr6Ql+mEJgfKF2m3+PufwuCSRMT3CCk
	1pI6gEOyWxpVBcLLKfH9tbDuK0WaD6cqe0a+yHQrFJQIkGonMjqODVA9hFc/moFe
	9rI3LRJqR88/vJ+pt3E+EYUCqt7O5p0RmhaQfA0up2i+ruu3zYtaB+HVFSK0nhai
	DicmMU4MB57v2p1R6nMpEHewmw1uEhIZoJ5JQb+rog5/KxdlXzKH+9BtCg0LL6bb
	z7zp9am0C+9HV13CXcOnF7JjwFyjerJrplluySXp68TP6T+Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv3mqa6dj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:13:07 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6133262e4eso1404952a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769188387; x=1769793187; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ra5z7RK+ckZlI54IIzTkylAtFlnUN13RpB+yLrim14U=;
        b=Vh88lI2TKVziZjWIJCk7AwVbkUlRN/hg2L11veYIlj3oc0zPFQE0NqL1QrHaQjWTIf
         lNNjwIZDw9eRNwXhAGvA0Ta32w3AU4PgJeS3qNK7WfRkVMuRSr0l5xYb8ImoZcm0ZTXC
         E5pNh1OA52iodMHv9Qq+oIGe5C3g5l/PcA0kc8NGh8ikO7hqU3X2Z1nOJLC3wWnyqONX
         QEQa3PepKLpc4JNawYnFbDle141jhCM8G4lWxEQ8X3j0RP1DFy9cdbM6LISGpmoJ3svk
         mubqad00WGaJuFDpqBZevCi/QB2CeryPxvyZ0bHBN0p1B7hCFWQSqhr2/GOesweoKavs
         m4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769188387; x=1769793187;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ra5z7RK+ckZlI54IIzTkylAtFlnUN13RpB+yLrim14U=;
        b=TmNMU6yriVI1RLSexgEuGp50zesBRqWwtTUVC316Ea2tBGZZM0ua+HMBse3yaXCp0g
         fb7Sv9kwu+kqjA7QcL4QAnyf9qMRpJf2Nyf/qT0UcS7g75n+1zrQKp1ZYuI5q3bGNRc7
         FwDub5PLaAYs3rQdK6LGcqW59j7r3p/oRGLdH+ipxXTDpMsZoeL+XukDYmo74BJEV2GJ
         tmtSigyDk4f2Kk/tZ4IHJI8vvSMdNdacbsGWqcj1eh0t99syQxMqUZZ/nNn5nDtsqn5a
         huRR7DjHj6zQWMf/Exwg7+NyrOPBT/d1XIYf42HlOw9DNQ7G6Y30lAMxeER5d2JR+QtU
         ZN4w==
X-Forwarded-Encrypted: i=1; AJvYcCUVoJQ4kR6AM/Xr8X+IB6FoFXihEuE3ZWBbOBXro8+Tyld1Kjhn7NF4cnWn+dBgy/t+g+GBsl9+vW13@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8pdv3vH5HItsXHlXyDgjmzcNKExlNzSCUVUIwPBqAIWNPEI0D
	dqAHP1cjxp/lf28Wekj+8l2+PvEZePWwYjkw7WtYvw93vTA0UFO1FWWUi/Rmth4dYalI6u/MwmQ
	w78/Uun4nwnGjUeCDZDJJ1WeBePbygZgAjBWqjLeGWczRMkfl9a5v7FVvTu0/Mpfp
X-Gm-Gg: AZuq6aJpZcZDRjsrdVMkbZC60smhbHLEEfyDaq5dOVRuDzbH0R9Wcn6ZDqKrLaI80h6
	XU9caNRIm64hbYLux0W3DpvipmFiHUe/5OvDhUx3ImIP8wskPNfpc6xIJNSJr0DQRE+TuVNRVuu
	mIzK6I5A6lbZjM4eAFE04XC5VbBFm6Pf/fM37BFEUtmnIF6KzgeDYWus1jsKN3PeAuKvf9Xiy06
	zCQqZC5HbxghAiULjxitowBSpUM5FaNj6FwznAjHXA6MrHelkcqg1F6/joQvRDWlzDM1UJy5lzx
	gsR+5YWWEOJx2/LHZ+fZF9+ZuZh426fWPt/BidMogmfg41jFPLFC+uIvALUTchjqU1WRZQdO1ZE
	D7SkiEt7k1UHQrLu4iDM4GXk0EyZB4ASu
X-Received: by 2002:a05:6a21:6da9:b0:35d:b5a1:a61d with SMTP id adf61e73a8af0-38e6f713dc2mr4242093637.26.1769188386741;
        Fri, 23 Jan 2026 09:13:06 -0800 (PST)
X-Received: by 2002:a05:6a21:6da9:b0:35d:b5a1:a61d with SMTP id adf61e73a8af0-38e6f713dc2mr4242051637.26.1769188386227;
        Fri, 23 Jan 2026 09:13:06 -0800 (PST)
Received: from [169.254.0.6] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536ef9ddb9sm1191358a91.3.2026.01.23.09.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 09:13:05 -0800 (PST)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH 0/2] Add interconnect support for Qualcomm Mahua SoC
Date: Fri, 23 Jan 2026 17:12:34 +0000
Message-Id: <20260123-mahua_icc-v1-0-bc82cb087f1e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAKsc2kC/03M0QrCIBTG8VcZ5zqHkzTXVe8RI07O8kDO0ibF8
 N2zQdDNgf/h47dAspFsgn2zQLSZEoWpRrdpwDicrpbRWBsEF4p3gjOPbsYTGcN2isttr5TW/Ax
 1f4/2Qq/VOg61HaVniO+VzuL7/Sndn5IF4wyVHA1KlKbXh5BS+5jxZoL3bT0wlFI+mxQKsqkAA
 AA=
X-Change-ID: 20260120-mahua_icc-76054966880b
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: lkchNzVY78xOlyB_Fy_LjHPi3jJgnxMP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDEyOSBTYWx0ZWRfXzCGPlm65YxYx
 7DN0g+saRfXZmG2l83AkMv+KISYT9/7Qw/maIFfn5DBVaWiDlBup8kC7cch3FivluyK1M7qfood
 13kW0AOCnEXecuQaN/Bz6qYuq++R2yHMJRteBEIfCtv7OJ4tmR2eTAJ7X6iJQApX6EmpXoEN2VA
 QTskJOksnEx/ACQNifm3v5U6QP5NccjVd3+hcVJYPXKlUKbrCN89EMKYY6miENNx0Pni1nH3t9c
 OcvVORTSSTCzBkOWaDTNs69ImGN9kVzVDyqFZ3crKSqnp0CSCOLm8c2BEH2+LYBKnTX5DfXsuju
 wv02Vsm1EVD6LhLDLNQ5GKGn4yMMZE8xyOGXJwhUD8tjXCaC3KxMVejfcED/pZFVM4GiJNJs2hk
 LZ8m7VHW2E66SfqR7ZDHsApZmOp3oyIVZ+9FmuNv9dRG2EEhpgr89+y2CimeiL4R8BrfFpDv2OU
 pk7cLRlkWUVufy8RdcA==
X-Authority-Analysis: v=2.4 cv=SMpPlevH c=1 sm=1 tr=0 ts=6973ac24 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LGNSbPc2IrT9O9NjG_AA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: lkchNzVY78xOlyB_Fy_LjHPi3jJgnxMP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259079-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[raviteja.laggyshetty@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8CD8E78E40
X-Rspamd-Action: no action

Mahua is a derivative of the Glymur SoC and shares a significant 
portion of its interconnect topology with Glymur. As such, this 
series extends the existing Glymur interconnect driver to support 
Mahua, reusing common definitions where possible and adding 
SoC-specific configurations where necessary.

Device tree changes aren't part of this series and will be posted
separately.

---
Raviteja Laggyshetty (2):
      dt-bindings: interconnect: document the RPMh Network-On-Chip interconnect in Mahua SoC
      interconnect: qcom: glymur: Add Mahua SoC support

 .../bindings/interconnect/qcom,glymur-rpmh.yaml    | 132 ++++++++++++++----
 drivers/interconnect/qcom/glymur.c                 | 153 ++++++++++++++++++++-
 2 files changed, 261 insertions(+), 24 deletions(-)
---
base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
change-id: 20260120-mahua_icc-76054966880b

Best regards,
-- 
Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>


