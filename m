Return-Path: <devicetree+bounces-314215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fRTiLUnZOGoZjAcAu9opvQ
	(envelope-from <devicetree+bounces-314215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:42:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC416ACFB3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:42:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=fGy4htsn;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=d93co3lg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314215-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314215-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 12354300440B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF7E35E95A;
	Mon, 22 Jun 2026 06:42:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D66335E94F
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:42:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782110524; cv=none; b=Cg/2cn79H/OxnTIONv55k6xlPG9+xs6j3I9d7cHYYQomkBauDaTzhE6l2zHk8pN++TaP7oJ1PAgBZvwYka17O2ZvQy0GiQfDMgp939PKDQG67mKa9ByWGqXhFeDPGh/8UwHY9siCe3toGzpl3cGjH56qYeMoQfemFH7fj33Vtzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782110524; c=relaxed/simple;
	bh=JTLUtADmMrSSbiBDyHOMvniy7JEjK2Z5L/2DOJuy2jk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AjCQEXPSpQ9nRWBPrN/1Qq+9XvfaXJ82Ac7Y/hMQOJivkDj03QHy+SoG4K11Y7L3RrQSed/sNXkKekLCQs+Xy9Q3aG6Llr/GGRwW2LFgTJS9Eb9eius3DFpMeRo+8HvQpNzKDUgr58JR1ZtXCzEKdDm1AvbeN3e/z/5VBkJtvQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fGy4htsn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d93co3lg; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65M59FGT2427850
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:42:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4znBvLowOIUes7nt6h5CCf
	8tAmfqX70+loiH9JDSFDU=; b=fGy4htsnjx9YINciSk/UWWm7BzyYd3JJG739O7
	0XoiTBkfEMU0AysqxqdIAlLc3tjcrFoknCNrJ1H1HkvFYLRccjhlXgwBQ0Y6u8V2
	E6HFUtfpa+g8xkYCApAr3a564FkPaZ9IZ1sgz2Qvv2pyrq11n8K2CEC5x1v1xPnJ
	Tc0Nqir/RFxpB+jif1OzAhwS+haM2w3gHbTNGilvsU+TGv3iSrqOVmsGtScpII69
	90NX/LwsFV9z4nWSy3eNHObt2uRs5mfBLkMrAlilxO64nVE7qBCaiFuuqGH55YCs
	LO7/0fObsJiKVohV+ywtc6z7/egCJFobDKMprwU3RkO0V56g==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ewhtsd6xb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:42:02 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30bd9e93024so167080eec.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 23:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782110522; x=1782715322; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4znBvLowOIUes7nt6h5CCf8tAmfqX70+loiH9JDSFDU=;
        b=d93co3lgy4noCDLMeVPETY3+C7ABHentyaCm/sQqluDCEmVDHaI85mfA1Rq03Q03jJ
         fic/22GpJG9qWtuLfr2FOQRHHDSY991SggNNM1BXlpH+ZrQWVc/x7rtNQiD3x2Og9D9p
         /ZGPdazFlk8VA3vna1ROyANLnnwd0iGJKEiaoDJUweSPBoW+zLFk/0aWQDLISw+xCyXC
         f8fT/fg5jcjnOd3XsOgyKApz0e2ZiNSjQe7KG9Ce2CXBt3TUhTwEcNSm3fKJHpQKYU/A
         SXu4IxUCLtBjtUm6eicIP02HKZNoVauxx6JuPBwGZeDe4FwoP0KZnQ4LFphEig2cFXqH
         2jZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782110522; x=1782715322;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4znBvLowOIUes7nt6h5CCf8tAmfqX70+loiH9JDSFDU=;
        b=KQ1zWkJF1w4kxuv0kWogN6nSVjueZnvAW3h6RC2e50AS5eCdJIbaGoZSD51VVMW/EO
         3buYXvnFjIE6UtcoWS/HKtezJsvXif7W2/a3OdHjllcc28sEPoVejAlR5/PPkAfdku0f
         9Hbq8vFxq4YkMHEPFnwjNtjCdJKPu8DuZbqgUK4uiGLtAO0iorXmB57ceA6Se2YXRYi1
         b4cuEpJjJ0V+C28lGisR7DU/EFF18MYV+N3jAfUhujtJDvKUPMoGzaZGrxMptSpok5do
         eg+DNgAWrLSxVlms5O4bfso1H5V4aBBDOhi1gcuZkY/5IFOAOofDPD6jtAQTeqFhNUBz
         L0LQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpgpw8zErc0iOWoDCZF6HpsU4aqP85jPCM/dQUGvd+dG7FexT44WUdqPM3MGXQn8UYZycn4f1RtiF2E@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu/+S/LpzJlSod4sIL86VJdfpVTV+QoHzu5XqwduM3TpTWPhgm
	yk4O8xXn4RCqemRapm3o23cTufq9ASxJAm/3VmW8ftQlUafh8kgIGP7T5MLYlBQpocmCwFab+rB
	u0TnHJmwolsdzA4KIkIlgGer5xncqs4+I8cXwGoqRshkXUOBUms8w06vNB74iuPPG
X-Gm-Gg: AfdE7cl3O5c2PaJV+7EmfopYhbHnlHS6qk188C4oyxHONjZGorVtsE/SgBFq3LQNzRA
	Fm2OMGZn9wet3781YvYB4qZDYHPej4njDLCLJEhy62SGEEsGd1VqfMdl0Hel0Q3XiKrUSjFN1MD
	R/bXjcTDcxH7PoNyR8pyiZLJeVH79cZRuHOFVigtp8Gp4JTOufbxOmw2kviedfjvx9KuWe+rVAH
	JXKXEQnyHZXFqEJ6QP7PRlCkxERmR6QURWnvKT3PiziaaCZu3iP85y3d7/1BRPs9TA70bGNDfuO
	oPEgt4dPUD8uXNElj+zFffHv7+jm4cPfrOPV3Pc7QS4l0Wk1jYfMwBwIgu+uKyeoy6Y2QINVG+9
	uebUgW8fTUwKCc2Wwmqj6yyyAzECzxbcL3er1T4bJ5dAdK0MpkNqE6dj+lhlhtw==
X-Received: by 2002:a05:7300:e619:b0:30b:d2f5:d503 with SMTP id 5a478bee46e88-30c0750d8fdmr3985051eec.7.1782110521735;
        Sun, 21 Jun 2026 23:42:01 -0700 (PDT)
X-Received: by 2002:a05:7300:e619:b0:30b:d2f5:d503 with SMTP id 5a478bee46e88-30c0750d8fdmr3985042eec.7.1782110521191;
        Sun, 21 Jun 2026 23:42:01 -0700 (PDT)
Received: from hu-weiden-sha.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c1be95ebfsm9357803eec.31.2026.06.21.23.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2026 23:42:00 -0700 (PDT)
From: Wei Deng <wei.deng@oss.qualcomm.com>
Subject: [PATCH v3 0/2] arm64: dts: qcom: lemans-evk: Enable WCN6855 BT via
 PCIe M.2 Key E connector
Date: Mon, 22 Jun 2026 12:11:55 +0530
Message-Id: <20260622-v3-lemans-split-v3-0-d26bb22594e3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADPZOGoC/x3MSwqAMAwA0atI1gZKihG8irjwEzVQqzQignh3i
 8u3mHnAJKkYNMUDSS413WOGLwsY1z4ugjplAzlix0R4eQyy9dHQjqAnVuJrqpllHBhydSSZ9f6
 Pbfe+H8al/ylhAAAA
X-Change-ID: 20260622-v3-lemans-split-5e372766ecb6
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_chezhou@quicinc.com,
        cheng.jiang@oss.qualcomm.com, shuai.zhang@oss.qualcomm.com,
        jinwang.li@oss.qualcomm.com, xiuzhuo.shang@oss.qualcomm.com,
        mengshi.wu@oss.qualcomm.com, Wei Deng <wei.deng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: hAHvliL9D6cZde7k_SYqSnYdc16wS03g
X-Proofpoint-ORIG-GUID: hAHvliL9D6cZde7k_SYqSnYdc16wS03g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDA2MyBTYWx0ZWRfXzVBeoGm/+zjt
 cAXDregsJq3Fm9SHBxDiVZU5Y+Y7YPo37oU5kT4n5uwhlHLIFapM4GBlrgmaeRaDucnkmizMh7O
 9Jyixnr95rnw0LG0SrwA+61+wt8sndxjk4ZtHCCtRtwfSB3z2SUcseKJWGm2M4lgUNxlgnFWqf2
 txazjnu+AsFbiHkbJ+4yBplX6GSnKeIYJJBSnb1F+8G2aUA93fCReCojVSrzqb4rNDp7MQb+Acf
 vfswWf8mzRAzQFq94Xp5050OFjqJZoD9muhvN6BYOkX0eUPt3pNVLXJc2gxbuVylig8zs+vYt9E
 HqgD1Tv4RgiKEmnBlygdRLq99gNCms3OI/SXbCBHOeZP4aL0SneMQswAeCA3kLQ5jWg2ezKCKbN
 dhttFRRzBKKSAZd5S0dvF8N7pm+7YakFFrpXcKJElDBoqTbpkzxkiQY6NucGQFfkwfR9cEbEWwh
 8OvwBZq1nbdvt0f7X5A==
X-Authority-Analysis: v=2.4 cv=bcRbluPB c=1 sm=1 tr=0 ts=6a38d93a cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ZR8elpf7WTrouCj69ZoA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDA2MyBTYWx0ZWRfXygsfMUqkV0OM
 ZNY5PPGaYH9saHF357YoKZ9hYbbbVTD/TUMDU1s/btpo7wa9LUlV9kDS/ysydyG1rAl0NpgMt5n
 tYWeIy23nAyjSVy5NRnUxjrtQ1Q1BD0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_01,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220063
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314215-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:quic_chezhou@quicinc.com,m:cheng.jiang@oss.qualcomm.com,m:shuai.zhang@oss.qualcomm.com,m:jinwang.li@oss.qualcomm.com,m:xiuzhuo.shang@oss.qualcomm.com,m:mengshi.wu@oss.qualcomm.com,m:wei.deng@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:mani@kernel.org,m:brgl@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[wei.deng@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wei.deng@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AFC416ACFB3

This series enables the WCN6855 Bluetooth/WLAN module on the lemans EVK
via the PCIe M.2 Key E connector.

Patch 1 adds the PCI-to-PCI bridge compatible to the lemans pcieport0
Root Port in the SoC dtsi, which is required to associate downstream
M.2 connector graph endpoints with their PCI devices.

Patch 2 describes the M.2 Key E connector on lemans-evk and links it
with PCIe RP0 and UART17 via graph ports/endpoints.

Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
---
Changes in v3:
- Split the lemans.dtsi pcieport0 compatible into its own patch (Konrad)
- Send as a new thread, switch to b4 workflow (Konrad, Dmitry)
- Carry over Reviewed-by tags since the diff content is unchanged
- Link to v2: https://lore.kernel.org/all/20260615103228.3104083-1-wei.deng@oss.qualcomm.com/

Changes in v2:
- Collect Reviewed-by tag and reorganize the patch (Bartosz)
- Link to v1: https://lore.kernel.org/all/20260608091702.3797437-1-wei.deng@oss.qualcomm.com/

---
Wei Deng (2):
      arm64: dts: qcom: lemans: Add compatible to the PCIe Root Port
      arm64: dts: qcom: lemans-evk: Describe the PCIe M.2 Key E connector

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 75 +++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  1 +
 2 files changed, 76 insertions(+)
---
base-commit: e503fdd88e7d8f1922426bca1602049de010a66c
change-id: 20260622-v3-lemans-split-5e372766ecb6

Best regards,
-- 
Wei Deng <wei.deng@oss.qualcomm.com>


