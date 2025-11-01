Return-Path: <devicetree+bounces-233975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA42C27790
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 353804E1294
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882E4285CB8;
	Sat,  1 Nov 2025 04:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R+n5h3Gp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="baJqcj1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695FE219A8E
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 04:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761971401; cv=none; b=oEwHorv1DcJi+rDy+zsQr4UTFqlZPXM+IGriZq8uOmkSzLQ4CC/nHi8qgTYn5gxygrjggHrv2YpjfZ8LmsSLOpe9jWK9wjkH5LFcUpH6tDf/7i9wAtMCX7jb02KRV26gv//Z98+Nrf5prf3heDpjj5u4KsIckLwmKjze8+USYbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761971401; c=relaxed/simple;
	bh=e8YBQCtdDQOE+c2FrOM2E0WznZ1ocAyp2AeN7FC+gwk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YKEGdO4/OR3HR6CWtepdv49Yn6ZWSMkQ/ijkV2VNtmRKaocIugUY3KvMSIEvTVIZ8nUCcHGpFsVz12cMzi1vHvNN234NLquNmoqWbdZGC6iQ2SIyvIVvJ7z4KELysyGi4HQU7zgX9azwT8Hv3ELcI+nEab85zChkCYaO9AoiNbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R+n5h3Gp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=baJqcj1d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A10L6Ma219545
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 04:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Ctx4BOtbh3YJbrYRO264Bw
	BpeSzZN3jyDBekObzzGZ4=; b=R+n5h3GpzgOtIEzOZuckh6wuHl8V7faHw7C8Cw
	7WQXpMrADSq4twr4aprpdUilIfMqk9CbAAnz5o81igOo8AuIdJuwwg///neozS/z
	n44GDBEng2BzLyPbp93QFtKVm3PSfRn+Lw8qEh06RpsefL3ZZefxlXPeMqP3VWMc
	lKUP7+G20fb2r0wA01jUMhLGoKbKQZD6ltFqwiNANl4Qxr1HR83WZwG1I8Vj/1Qk
	AO9bYymUtG8fn6tlRydtbOb1iZMKlFUGfmp/1V7yZTetKHRHvDEvG4BXfPsoH7ol
	tO4K70ATkqe/Upyj4FHAotjSq4PtM7gmOm4h5h4FoIDevvlg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57jn09qr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 04:29:58 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2930e6e2c03so32942485ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 21:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761971397; x=1762576197; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ctx4BOtbh3YJbrYRO264BwBpeSzZN3jyDBekObzzGZ4=;
        b=baJqcj1dfe/ogy81YRrNaR+9f4/pYyNthJwXkdDZ3KUl87dq43o9phbi0TfEZ4Q+cq
         2a16UhvhF5r0/YESDqZ3NUYc+HVgvOvilmT6BHAxhSjsyj6qwV7KPAcQcO7X+sAtrpZG
         gBWJhDOmSblMKyfF/mZOs0e/1K2kmY1m8Dn6wBbTux6B5/Z0EK+huoJAUbyVUBVpgYQN
         k9jsapfxPGqTQCeqn/iGTQAsqr1xz8+oSJUl7KHBRlQ4kQqFCFCRKpDdpCmsb/B7a+xv
         vq0TcqsbhOR8pW+7qnHuAhshgBAhoxa1PrKy9trnWPZcBIA/FpaFdt+5eSLhquCwShGi
         IFgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761971397; x=1762576197;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ctx4BOtbh3YJbrYRO264BwBpeSzZN3jyDBekObzzGZ4=;
        b=D2hgxHzHgRUynwIe7bIF/gXjVQNZSJxJSf2zx3YOHNdHP3iPkjB5Fr3VHr8J9ixJ5t
         FLgOefpg0bOMwqWUXSN0ZbmOruIQ7azwhiMPlwpuZCmYcL2YGjquO11et+LtUI9+nkiz
         MKf5BMIa2isdvctNEQa6CXob7FbBMMi+PJfwQW86Wbeyi5+c6JBP9u5zwxQhUactqihp
         7KhDNHyLwcxkV9j7f7+TjbshanF5gpPCPkfGeNK/2xp64bYTTkXyzQiouSeHazEjGNrc
         OHKYm5Bwfc8iVUbUicP6oYREuy7czYfVFxBwgDE6JnxZGPFXTTNY+38ggeohv9NKRp7I
         zujA==
X-Forwarded-Encrypted: i=1; AJvYcCW68+5iRRsr0fx1qXUk+bP0mlkc55D2n7fhOljc8At7CZKYk6vA7ccEmTy8Znpy+bR9aHLVSMSeWEXb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy02c7NwbGlrIaa++8FgSQ2L3Bb1TVUWYBHK/r6d7yZF9SWykd9
	EWyHcsQQOA/+w8pYBKyFvjLrKOoJdRK+AAoOKPMJL6FZ+oUUOnMw/pQKdzQNtrz08/+9/c9z8Wp
	U+VGViu7d8rJYGqTvt3fMMzpZ6fqKHciPF4YfTpUAB3cqFd2thUwZjfjVg8Atawvl
X-Gm-Gg: ASbGncugGDxtdCat/hd3P/5SCE8TuFbwgTUg0xIWwuNdbG43aXUe4IlUHUEtL0Ed6+j
	SwmSYoqGpikuFJeJzUyrWAHGPUPwpQjQ7JBvyUEYweJL5XSy6r80dqod1CPEJI9KoCOdV+2WoyN
	XZ1KW4Uhh4Yp6Gdm0bwGS8aBWtk7/S8Fx8pDDIb1PRICh0NQB1f9P+wfRq4UALRnqJ3F9nzRsSq
	PCr4P6CkcGoTUcHl49302jP6IhsD17v7OTuoeoRM1/Rc4IYpEOnIr4mBZlcdasBtJbnisC/mGYs
	GdrsQsilPRnc9jYZOrbOhiAHTJQecsX8tR2OKlGdIK7LX/5GlJUTw/sEKWIXLN6wTXF7kdVH8Cc
	XohrhoJWpR+kOxEea59J/kX8O
X-Received: by 2002:a17:902:7608:b0:290:a32b:9095 with SMTP id d9443c01a7336-2951a5c201bmr53402315ad.54.1761971397236;
        Fri, 31 Oct 2025 21:29:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGEnGXG9bXhr6lRK93wX5pQfZkWyyZY5Y0I0vLfyj5CKdoO9hxQrq8/lX2O7OrjkVHvk/wAQ==
X-Received: by 2002:a17:902:7608:b0:290:a32b:9095 with SMTP id d9443c01a7336-2951a5c201bmr53402195ad.54.1761971396653;
        Fri, 31 Oct 2025 21:29:56 -0700 (PDT)
Received: from work.lan ([2409:4091:a0f4:6806:9857:f290:6ecf:344f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268717ffsm42273285ad.2.2025.10.31.21.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 21:29:56 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH RESEND 0/3] PCI: meson: Fix the parsing of DBI region
Date: Sat, 01 Nov 2025 09:59:39 +0530
Message-Id: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALOMBWkC/3WNsQ6CQBBEf4Vs7RLu9C5iZSGthZaGAo5FNhEOb
 5VoCP/uhd5mkpnJvJlBKDAJHJIZAk0s7Ido1CYB11XDnZCb6EFn2qhsq3B0jD2JH7DlD7p9bY2
 qnbVWQ9yMgWK88m5wKa7F+QRlzDuWlw/f9WZSa/uHOCnMkBqdE5na7Nr86EXS57t6ON/3aRQol
 2X5AWUwDvu5AAAA
X-Change-ID: 20251031-pci-meson-fix-c8b651bc6662
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Hanjie Lin <hanjie.lin@amlogic.com>, Yue Wang <yue.wang@amlogic.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Andrew Murray <amurray@thegoodpenguin.co.uk>,
        Jingoo Han <jingoohan1@gmail.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        stable+noautosel@kernel.org, stable@vger.kernel.org,
        Linnaea Lavia <linnaea-von-lavia@live.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1691;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=e8YBQCtdDQOE+c2FrOM2E0WznZ1ocAyp2AeN7FC+gwk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpBYy9xaS1zECW9y/pKPSQ13R+OUAM4ux1o+wh1
 rAWsWZ5CluJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaQWMvQAKCRBVnxHm/pHO
 9SeBB/4jzfvishB5L41wxpNEervAI3oQbCu7dJAUyZAoVjFZsPUWh6kJtWTyObc+h74WQRqXoqe
 /y4zwmQ9bSK0p3u7XxEpejtutuu6+3ELEhJdV67ODk5bhckHUFyThGk+LSyM3k/tMt9H3NFOrqC
 5aB2T5JYdy/Jr3WU6rMenrzyKBAtiEmZF2qyAf0csR7hUrUJd/oQwk1gusXJub6jUrBCMfvf59i
 LLMyJdcldC6sOfAVHEoAgAjqCg+acMOiG7rdrW5CG00SIpg8sL4jHmH3GFftBhjsDamDnOXFZ2j
 Ud3zZ4Hlsku3C08GcO3xWmynXXTGcZm+yYuNt6X3N4HWEDzH
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Authority-Analysis: v=2.4 cv=StidKfO0 c=1 sm=1 tr=0 ts=69058cc6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=yNGAleCs8xXHwlDqsQYA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-GUID: EidMUcmwtTjc35XnZmeAevHXOK1fFWws
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAzNSBTYWx0ZWRfX4zbqlgO8miMF
 D0M1VlSGTZX58hh6giE5JKxF8/I32u3OIoo9B4zBdcNCVm4RTW2rvxPsNCMeNc/lslPETPfodcW
 5ehmMB5hzLN64XT5jAjaB4yiNn3wjqyTwDf7ndXCYJxdg2i2x8BW5ovnbSSpUMDv0AU5ulnK0n6
 OYca8TZfBP6rhtVNWLyc+Gk4+OvzssgYwY7E6OjmvZdSwrn/hdUvLC8pIfnpfzlVHZvR2WoeYF/
 pvyHxelUypUeQp0ihY/TxmoBDxy442oUxLcKPQuHP+N/6EW12PuGtwT/v7m2RX2RdjM73u2Xjka
 x9F1GTI7iverkALiICnbvI+fJMCdnu2iPSsYSxagCfnqMzspjBZDQ+YvWP2M4uR320+d/qwvIWN
 vFCZNaYn6CejIfk+J5AWsryBVq5iqw==
X-Proofpoint-ORIG-GUID: EidMUcmwtTjc35XnZmeAevHXOK1fFWws
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010035

Hi,

This compile tested only series aims to fix the DBI parsing issue repored in
[1]. The issue stems from the fact that the DT and binding described 'dbi'
region as 'elbi' from the start.

Now, both binding and DTs are fixed and the driver is reworked to work with both
old and new DTs.

Note: The driver patch is OK to be backported till 6.2 where the common resource
parsing code was introduced. But the DTS patch should not be backported. And I'm
not sure about the backporting of the binding.

Please test this series on the Meson board with old and new DTs.

- Mani

[1] https://lore.kernel.org/linux-pci/DM4PR05MB102707B8CDF84D776C39F22F2C7F0A@DM4PR05MB10270.namprd05.prod.outlook.com/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
Resending as the git sendemail config got messed up

---
Manivannan Sadhasivam (3):
      dt-bindings: PCI: amlogic: Fix the register name of the DBI region
      arm64: dts: amlogic: Fix the register name of the 'DBI' region
      PCI: meson: Fix parsing the DBI register region

 .../devicetree/bindings/pci/amlogic,axg-pcie.yaml      |  6 +++---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi             |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi      |  2 +-
 drivers/pci/controller/dwc/pci-meson.c                 | 18 +++++++++++++++---
 drivers/pci/controller/dwc/pcie-designware.c           | 12 +++++++-----
 5 files changed, 28 insertions(+), 14 deletions(-)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251031-pci-meson-fix-c8b651bc6662

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>


