Return-Path: <devicetree+bounces-276601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDwEAn8puWkAtAEAu9opvQ
	(envelope-from <devicetree+bounces-276601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:14:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F892A7A76
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 153B4311176F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981E83A6B7B;
	Tue, 17 Mar 2026 10:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k6ehrvhK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O4Pj7RHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF293A5E77
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742023; cv=none; b=fS6E1GhsIqHKadw/tPZGeCMd+7XudN4MRKzgmjTBA/eREoweEub59rfZ83K/uJUNhmx0O0iIDNBm14e7xxGOTm9cQXel4PljuD9nUFTfZsKpk3yhId7Xl3rqAy20hE+9FEPUkcMowTu2Zd8FKgjKIA/m5LQArxfVK0dwk2oYSFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742023; c=relaxed/simple;
	bh=IRck2ORti5++vzKnQPjaqIPGPrwD8P+u9lBXDb7d1Dc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uITlWAhH8nQWYyoV/VIQjGUmNufOeOq9mH/mS+PeKa2bvmupOOMy8yZp532RlL5hmr8aI/CqiwICpFp2F02z4ktEyhu9USivmITW97ZwqpRds43YRtRvJqDk1u+1AlYi8kEjqwnP9Pc3q2FVDF2nCZCWAMQTE/WJoZYMSMnyA/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k6ehrvhK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O4Pj7RHY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H6iBfp1176055
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4wO1USks+UtompvppfcERO
	Sf3ZplEYIjCVL6aOBEWjo=; b=k6ehrvhK08Iu4o32p19HlIJTkHXJIU8/xBv7/3
	e9/qFFK/GfxTE7uBoR5vwCatwXf84/4igZbBL+PWj+1q4lHM0XEUSNL1zdVlHG0s
	FVLde7f+Ok2dG4zDCHh8QBVD8y5+jn77mEE14XDEw7aVY4wKorGHpe/BH0vDULfC
	BsVhmRF4Hp1fzSfA1JUmjG5kHyOubArtH7Jv2a8VOFoOKChzMzBMXxfSLMcMS3W0
	ikNUgFydxExgeEwyS/Ybt8Vt8ntZ+LxUwH6Xqy0yYZIS6k9bn/79bCEzETEkmxt3
	sKvp9B7/vhQOLiiSTv1MQoA0vNYv+9ufXh8iICHSABGbJLdA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkuy3h6f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:06:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7d4cc049so6011565185a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773742018; x=1774346818; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4wO1USks+UtompvppfcEROSf3ZplEYIjCVL6aOBEWjo=;
        b=O4Pj7RHYw5dvgOvP9sXJjiW+Ia1y/lB1Vvjp4hNZadttBKlfvGBaKOSPiA5HZ23s+B
         lRG/fQZken9QOBWGstrZTiFM1bc0iF3wTK3S3Gr59k9CY56HNlLm/ilFMv8fgEerGirH
         6GEHzW4nU8ztpxev95As65lqY+mSNavm6h0wisUn3N2quJJ22YxMxWgqB3xShwQlME1Y
         xdGABe3o5Ghiul+D7N3a+QQVABMwhOIL9KkDYCtwZo8QehDl259DF0bFpobIIUKVfs7K
         ISk9Cu/0FNpjgzsswzsw/E3CCx25NCPVyLk3/qhs8fUk6R4PpGIFEXMEBx3AayIIv3s5
         6a9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742018; x=1774346818;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4wO1USks+UtompvppfcEROSf3ZplEYIjCVL6aOBEWjo=;
        b=WOZT0ZLZvWf7rznHM/RyOJhL728R+vP5FJUKgd0HoBeIIPfSAVcqKGQmOJpEmkPm5+
         aI9ip0Lxc88VCbk6u2aFauhUx6DbNlBbakvjVELG3QvDPIrGU4ctu0NozY8iVYGlG13Q
         Uwk0K4zgJMQ9eTvcqqmVBh22XhvhhLpdsHo7ih2WZTbvxilk73KgtGCjzRZ7O89tc//D
         m89UdqZxRWGKZqFeYjyax+0D0KtQlY6deRh8ykHB2qiuJHiQ/BnzG/6N8QWXnolctFFG
         QNWBLvgEho3APH7dQ5L34g57VnubuuiAyt1p2dec9olwKl/z+4dPdVF9Yestu4wLkysj
         720g==
X-Forwarded-Encrypted: i=1; AJvYcCUrzLSoReHpPm2hZQl/QayCV9WXcRw7m6y4HgV387dcamLPKlpvVZ3/YrWy3oZb44Kj4TneuKgIO4Ua@vger.kernel.org
X-Gm-Message-State: AOJu0YxxHnFNrklZjlqxbdiYbpY6lDCinFE/VviQb46nY9IVpPOUwcpF
	5L8F1aqWexQcVVGmD2F1FUIfruo1UdLRM8TNw2lTCPm19a/f4GzwGviGEKVVNp5HHRlLayjLCcP
	hqrwPAkzy3PfbSxIzYfX7TOfsn+Y7xh8nFggN5Yvtn6+e8uoX3au570U92MT53eZ8
X-Gm-Gg: ATEYQzy/ZnD61qm9CaVgDIEdCM83QnpGdfpIbxosWKAN9Gk4gT6LMrjaXcAgs3zoo3v
	/jB2x85Bdws4sMTSTREFrHJ72wzVaVGJdDrlJGCbH82PjL9eVOXY4ogGactwf0x8EMbBHEtGXPA
	xF3FfKMPOhE61i6nz1uFleQbeiDJW9fAW5d/QwOd6GxC/fv/TKrMD2iCufOxUv5CiMMPZgqNBpH
	HFMfCsW4wnU8GIMzB7a+JSeLCa2ECHg+iVdfK3GuvuEvn/lboGPtb3TekEB+BSEaLul9tQyLeO5
	C3zVnEzXTwuWs1k1SbiIX8RsgEs/h3u8IbmfafxNoUX/G1vp9kdVCZMrI/VPSGyvPjFS2oAitTV
	e6A6I+tFYvsrzXKDlXZgReOWSKPv6l6xyD1RDHjbooJ2c
X-Received: by 2002:a05:620a:170f:b0:8c6:bbfa:36af with SMTP id af79cd13be357-8cdb5b59a8fmr2112599885a.40.1773742018322;
        Tue, 17 Mar 2026 03:06:58 -0700 (PDT)
X-Received: by 2002:a05:620a:170f:b0:8c6:bbfa:36af with SMTP id af79cd13be357-8cdb5b59a8fmr2112596085a.40.1773742017945;
        Tue, 17 Mar 2026 03:06:57 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48634a7ac93sm33271395e9.2.2026.03.17.03.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:06:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 0/2] clk: qcom: Add Eliza Disp CC
Date: Tue, 17 Mar 2026 11:06:47 +0100
Message-Id: <20260317-clk-qcom-dispcc-eliza-v1-0-be4b0e4eb24a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALcnuWkC/x2MSQqAMAwAvyI5G6gWLfgV8RDSqMG9BRHFv1s8D
 sPMA1GCSoQmeyDIqVG3NUGRZ8AjrYOg+sRQmrI2tnDI84QHbwt6jTszyqw3obdJO6KKvIXU7kF
 6vf5v273vB54TWvlnAAAA
X-Change-ID: 20260317-clk-qcom-dispcc-eliza-d32607aa5ad3
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=827;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=IRck2ORti5++vzKnQPjaqIPGPrwD8P+u9lBXDb7d1Dc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuSe7cRkCS3L/kcR+YheCci56C9WI0wMf3Fqp2
 PobUXJfeJqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabknuwAKCRDBN2bmhouD
 119ED/9hfPefOSS/4xCkWBjSPeANk44HAWzM79B4dOlmhOqz5sHDGTTNRwYYvQDfGqjZVr2xaeM
 exGe7oxnvxACk53n/IiGiciCVC/rCT3SQRfnGffQoIEaH6nxy6KjiXXORPjvPZktsH+B7ovH+aY
 XRBvH5bUbm8d0HfP0HaQRRM0evitBqHbAa+LfPUV7j6VhtPzXg5eysCHpAW2DA0NqLp/nETYmxc
 1KJikAigDUpsCNsxZOuhlqjkP1tyobw31GC/cBzwZklB0OX3zl4vysu1a02Qenzf3t3gIKreIWE
 kf0p7yOAykuBmClPXgGQ6d/s5lrwlcFNPfhyI1a5jKCyHam59EhPFC36G/kH1h/eswHoWh3z7UP
 Uue+cT+kuzuXPnNLF7TxsiFZN4EQ+REXGE0QpFZESYmO0P5B5Ot6y+sjHj347+nbj4sRtcsrsvT
 lADzTiIpSMD6Ce4PqN+2cl3aTt41SXFV0Z4WW1WHTWrfxuYLr/6n3gPBA3bTVWP5sxawtmHXgZv
 vfus4U43TJeAyep+jWFq3/vWe+FeUjUqflUpCZ8hnWdBlP9XHnNyBuh4wf4/5IJupm6sdQTy8+N
 hRFeWphc0c7sxvubUwm7/Qi9ZliOtSkvJ+lWff6FzxJsRULo83+5AI4eSVGdeJoLF8EofaSNDLk
 PNn7ugWiMRAoETw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=br1BxUai c=1 sm=1 tr=0 ts=69b927c2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=K4JGPIF_-WF9Dfj19fAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4OSBTYWx0ZWRfX4Wsvk+NGDBsL
 dly/J8gn/oqJHas0EO5B5fZ2922TAgY7kN4Ti29id8RgVBpEJTG4xP8pWpPi8Q8pV6KAxnuoPaU
 LalTcRO4H+YWfMa5AjJ5qGE3JSRG9YJpBjI6nkdS1bsb2plbrFPgluB/4STkBqNI1C+6kou4BMM
 9szOLw/tiNFxQbQIAqyWcomT493+j5wJ+wAJfmR2IqNlzaxZI0h4fRap9zcYaAb/KFxETo62IM/
 eV3jQ3B7FaespryLXjoYWHVQAl102gUfGLiwbALGjovPvVyFtzwxqh1CtgnOVNZNm4qPS5/vF5o
 osfA+nlYhKY8WmSo+F4fQZjna67nDvwXn4Hsxa3Hj+B9nKwi8LH8C/jbL0JemLIC2doiv4tdAiZ
 83g/MK99FtAFdiqcVS5URza3aiJj2KC46EPqgDbXJis5SaLxCpM35Yg2p7EwZ4ErlDlT2jWkblQ
 UD1G9tiycocbiffLq5Q==
X-Proofpoint-ORIG-GUID: JJV7zvsOimjySTLvHIL-RwwV-dy9Gnw8
X-Proofpoint-GUID: JJV7zvsOimjySTLvHIL-RwwV-dy9Gnw8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276601-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 58F892A7A76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add driver for Eliza SoC display clock controller.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      dt-bindings: clock: qcom,eliza-dispcc: Add Eliza SoC display CC
      clk: qcom: dispcc-eliza: Add Eliza display clock controller support

 .../bindings/clock/qcom,eliza-dispcc.yaml          |  100 +
 drivers/clk/qcom/Kconfig                           |    9 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/dispcc-eliza.c                    | 2132 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,eliza-dispcc.h      |  118 ++
 5 files changed, 2360 insertions(+)
---
base-commit: 95c541ddfb0815a0ea8477af778bb13bb075079a
change-id: 20260317-clk-qcom-dispcc-eliza-d32607aa5ad3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


