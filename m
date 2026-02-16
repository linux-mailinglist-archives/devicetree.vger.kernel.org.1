Return-Path: <devicetree+bounces-265771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE0kMtwgk2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:51:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7B6144251
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 49111300E2B8
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A99D3101B6;
	Mon, 16 Feb 2026 13:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="orDWyPrx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dlI8zcfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321A130EF6D
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249452; cv=none; b=HQgvp1Yc/HhRKFIc+qiLmd0I2uMuHoJX0k/2dsAt6SW++huWmcop2J76hfOyxgzifaAZVOywCwEsMFmdFKbZKaPrGLZcOqqz6DyrhbhqLOChHujkLiUw3P75yXps9HTG3BWjhz9MWH+bb1JrxBBm3ScfYJGBP7Rg+lDhzm4BdeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249452; c=relaxed/simple;
	bh=LHXejiw9nM8/bAfVKLaW9upd6YxeimoD3dgUvRqrd8o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XD7yeXJtTeQtuzwDQhI+JMl9Q1TOBQQci4vanapkHd1mn6JKTCZ243maPOqhE88TGWcPdVjsl4cDqD+UMbTChDhFFbN0lofg6pCzmlnLf16KJQ3+hVY8O2c4ZDe8l6NBRnqknP9QnrRqwFifZz7CurisRUvmMYEnJYTeIVkDV5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=orDWyPrx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dlI8zcfp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GB7lPN3662197
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:44:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PY7Qi8wmiAEqKk1E6dpN8j
	O8JjYeEu2MQe0uWjjQt3M=; b=orDWyPrxG7MZ7NojuPQKnbX6Muh7rdPDHqBAQv
	zjdnYlJ5V32W1C98awS0lxNt4P1d2pl4goaxuUTR2eu3qQTN9oeQTZciICk9J5Qi
	nJv/Y62lOs+ZEP0k3D924Aop1T5qUSsW2O/ea/5et1NpnDlYEFq5Zw1iO9jd35LG
	+HV4+92TpiguIFbOJ5SsfQTgCH9KKG+O77K9OV5PV5mXBvOZntL4Yg6gZgj3eM7/
	QzvXiyNXFSj+2JFE+u+oWw2NunMhHQOT0c4gXiZh27stKEFtAO7x3DjexiKuVmIz
	/fE/USPzM64FjaW2BOfhXihq/eQhWWIBrm8tE4urG57knrtg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24cqmr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:44:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70e610242so1975045685a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771249450; x=1771854250; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PY7Qi8wmiAEqKk1E6dpN8jO8JjYeEu2MQe0uWjjQt3M=;
        b=dlI8zcfptHunEAksQwkEiKu9RvgEFDdOtnIAhWWWgw4//ysKPpP0InwvYjuzsmSS22
         iX59WFc8LNIHMODGeyzZyc2E5+ZegQ7yr5aukxocD271DHbUghQga3yjEGsH3mON2OmR
         E+qiXkSPU/J8u9osmm98HWr+0nV9E+t2i0CnUKPf8MvVM3JHt4CsNnMfiTdJXeJSMl2R
         5356U0v9ZryoIkl3Q3CYl/03rgeISFAfxWgZKCNqAN5u/qRlff0uqWXSPGefjRdEmMHW
         LEo1ShwXobF3y+ftCFfXMM598JsZ9E8rM/JHQdwhCW0x06RSrolhJenQzMALK/7yOi7u
         r1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771249450; x=1771854250;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PY7Qi8wmiAEqKk1E6dpN8jO8JjYeEu2MQe0uWjjQt3M=;
        b=XaBSj+A7LXSMEtf9UMIsiog2Mj8N7BpNQ2dJx3u+3/Jn/w4HJ8ZTJuaHHtUGlmZQx4
         GYSpj8J20hep838REFqw/7LbPfQRZZUxS4XyOvBq7V6AknPXg9wMBhgatHWzje9L/Vze
         vh2hgVAKQVNvvRQb3+wHNuctgVYjuRWHIqzYdAue+A+CumFvwU8ou1Qwx1OJfPUYzhPr
         AaXs/zwJxeVddI+Pls948YcKbOaQucI17PDtfDT3g9AE7XJP8bxyJUlyxfOhFTJcevOb
         ARqeaVNELuwAS/2wKo56DS5RrsetCDlD12J1AynNP/5bcBcaRTDXR/vmjo4mAKSwaYlo
         3/NQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjEab8oGOH183nUMtOV8glMPkt2xcTqjNiQjOyJwhWGtMr1x/nAvQOPPoC7u+Fsm5j+cxl12OY6RBF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9P4Q8O37sjfyaGb+xA+xm2KHHEIh26B6bXXX95io/AW5IlXy3
	3t6UKRRPT9qZ8kCHI+p35CrUICSoAbLbnhRs6w4tN6monmkuba4mM8ObHbJluAsm4pYOs0mn2YA
	07wWKTRiQ7eh7tUYZV5tnrcJPeHIWX6res7BuMOKeoJvhIK7sBI6TW7EsbEA28ljg
X-Gm-Gg: AZuq6aKqaWZHYidNIOr2826WPinjFNheSCYdih2h/tAUd0nS5Ysl9UjjMU50g7+woMd
	Bs7DgE+C+aAOyhxDQhUUUP10ff39DtsLXGjFPukooy1KabzyqBNAmVAbDZ+a6NQ7TZaLU6x05NF
	X+nO9M6WF2jkpON60Uj6Q9R1KHpg8TRdgHwFPGV1An/AgyRtBV3Fk5EV10OZruE8in7cetyxGev
	KSnelqP7OkGUWJ5/52cV3Nhl2UO0yjszNWDkCDW6BVWV8IAFkYSkYZ46s0KscPw3AygJiD3S3Vx
	0PGtvyGE+WhgyoSW8pzFGT4x0//2bgmNLwZo/XhPqz0n1JefZDRCl5LC8MQEWulTOZmmbfzhPg+
	am1pOnxQx82pqXf99+aoCjE6ht7FmXw==
X-Received: by 2002:a05:620a:1712:b0:8b2:e666:70d with SMTP id af79cd13be357-8cb4242a53emr1309197485a.43.1771249449446;
        Mon, 16 Feb 2026 05:44:09 -0800 (PST)
X-Received: by 2002:a05:620a:1712:b0:8b2:e666:70d with SMTP id af79cd13be357-8cb4242a53emr1309194185a.43.1771249448874;
        Mon, 16 Feb 2026 05:44:08 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48387ab1974sm74300465e9.3.2026.02.16.05.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 05:44:08 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 0/2] pinctrl: qcom: Add support for Qualcomm Eliza SoC
Date: Mon, 16 Feb 2026 15:44:02 +0200
Message-Id: <20260216-eliza-pinctrl-v3-0-a7b086595651@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACIfk2kC/3XNTQ6CMBAF4KuQri2hbfjRlfcwLtoylTFAsYVGJ
 dzdghtjdDPJS958byYeHIInh2QmDgJ6tH0MYpcQ3cj+AhTrmAnPeJExnlFo8SnpgL0eXUtLpfI
 9l3UhDCPxZ3Bg8L55p/M7+0ldQY8rsjYa9KN1j20wsLX3zw6MZlQJpoWpcpnX+dF6n94m2Wrbd
 Wk8ZJ0I/BMpvxEeEWakKSswtebwA1mW5QVBY5ZFCAEAAA==
X-Change-ID: 20260120-eliza-pinctrl-7bb592ad63f1
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1510;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=LHXejiw9nM8/bAfVKLaW9upd6YxeimoD3dgUvRqrd8o=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkx8kL6Vbpow6meTyTDtY5iHNyFDw2G9bJkqod
 Q1k9MrCX5aJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMfJAAKCRAbX0TJAJUV
 VsTSD/9cjMt+BPVRbCGuje12CH7MwCfpgcOZUNJPWSuQe3IEeQZXpwbWHEK77p1sLKVltFgXaz5
 iAuMNrj4LpowhLyJwS5kidZ5vF2w6Z4HVQ+IESrKAyDcc4c+REP2mJeI21+ys2uThof9p6GnvzE
 TNL2O9ezy0xMoXfGF4+ACWSfgfh2MOSFA2LC3mrZIUnBAU0TyAlZN+bEWKzkXMPcglZWjCGei74
 jsa0Dfn4SThZTd2qatyKCBjR0pCf4m/YaAHkWU0vhovSYhFKsAsssqrecu9l/zsInR9NWkotk/Z
 IEPf9Q2CgDLClLvWhF1a4Gx8ymTxXWVWWxvkxuECi7iDom6MOTW/vVB042IwV42h7mVAk0EORqv
 ZftRxBJqO/sLs+5qN5YN5yo0yf3+9B/zTAcDfh6DYtorlVnnZriX2NOJU15IVkPR133Fl4UcMXZ
 Me1yM6rVWgeJnhRV4b60oul+NrrPDV2UmtOghXOr53FOkkIL3TiDqKqrxtNxcqG5GL9AbU6E9F7
 ZJFl48wB+L7EHKG2yXcDEX/+uohENU3lATSj2Cs69aEQZq4x78ExXWib5ynNKszqc2qj/VCytPn
 Jt6J/IrcCtN5OVQ1DsowIlDkY0kuRT9kALGUY0Y33dparwuCp/9BWaTh4uADWOZq39u7DHa5iQ7
 HbBJOYW/CTq2pjQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: clrZuU14bbzv1o3p6OQs1pnybe80HK8F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDExNiBTYWx0ZWRfX8VYCX8VIchTj
 hqO8YxM0hPfIDOws7T8WfD672VE+PDLhpuWicJWGClzDepV5P7Y/4IhkSIRzbbLmFhwIbfGu6/Y
 K8Hhsaw2WyqZVhkiXezgAPy8Gb6EvwnQUnt1k87nN5ZBikqhoxcyr3CUUsxjOUaHNvT0TBx4mzS
 kAgQZV1sYGTYF3HUcLAdK5/2FjSHUMApM1Ejhr9XR/CVjaXqWHHtNjfbdZA675Z+wh3E+d1x1se
 p6oR4fm+CLIwhMqkay4NWAnUQS5HujU58anYwXGAiSsi+R3gpqganV28G73oXKF/RO+FRWydpLw
 UeHl4hVaLZU7xRY4AWpw20XR92qeCF3SAv9uwNUVHGfk9PsO92CifUNq0aU6NDQFw3sLcMfyEwt
 80uS0BEigmQSrU+uzw7oV4M8BdAh5qrdhtQfnygiSxQ75wwaJJ5w9bV66NGWdhpUfW99zjYt698
 iWT7+8khn9mYMVhllfA==
X-Proofpoint-ORIG-GUID: clrZuU14bbzv1o3p6OQs1pnybe80HK8F
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=69931f2a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=HbHxh8WMmCZXOywC3UYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265771-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6C7B6144251
X-Rspamd-Action: no action

Add the pinctrl driver, document the bindings and enable the
driver in defconfig as built-in.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v3:
- Rebased on next-20260213
- Picked up Bjorn's and Krzysztof's R-b tags for bindigns patch.
- Picked up Bjorn's R-b tag for the driver patch.
- Fixed pattern for pins property.
- Fixed gpio-reserved-ranges, as Krzysztof suggested.
- Link to v2: https://patch.msgid.link/20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com

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
base-commit: 635c467cc14ebdffab3f77610217c1dacaf88e8c
change-id: 20260120-eliza-pinctrl-7bb592ad63f1

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


