Return-Path: <devicetree+bounces-309719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t1/WF1NKKWp2TwMAu9opvQ
	(envelope-from <devicetree+bounces-309719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:28:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58259668CAE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:28:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Gdl+QQck;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ji0WEdwk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309719-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309719-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4968830D7DA6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09DE345CCA;
	Wed, 10 Jun 2026 11:16:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228583FE375
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 11:16:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781090191; cv=none; b=dD8xQ9IikL+m3agQV2cYtNoJjV+ArS2fsCX279q2wXfke1Me8gTGNuEa5ipSjM7HVqi/Cyo6IPHrFvUM3AdRW9nsci7/azgHtQJ88ciy/MS3uDYVZJliz+olnOBBtGpu+NtR33xAiyTRj/1eDqUScvQq5RMzqgU5pQR8Q6gik8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781090191; c=relaxed/simple;
	bh=4WDV5seCuPIA18LhoD+gkqw7LhceSzkXx6aeBeoVft4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kHE7VNE/gJrvyOunR1CUfloje9s6Vk8jCABxIR2zOt9sRPnVmdP6UZgJB6VZFBwkqdm2EL0pMDoGtuhzR99HFHHge8K7W8GRI/ieD4/Gee714Ptf6lozNu1uEclc3K6Zq21dp5/hRcLD7meevRm/cVUIwyTQCrvhjec3vn6oY5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gdl+QQck; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ji0WEdwk; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65A7hdk4531330
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 11:16:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=UKEhKACBQ+XYELhW5r0yrk
	+kReOQiMsbSr6+zXFb6DA=; b=Gdl+QQckbvPoEslLSIkqylF0roChBdwwyquc0s
	BWjb8uEfCjagg+xvYyh5w2ikjY0+Uy5kLDLPKy7USqDxcwJUEGM9vF9f4FmSaFib
	rdxb/lVhBv4Y0P6BnonE4s7Cazybfy3lazWA243Cr9Y8T/j6jswSQ8Bl/0b/SlDN
	ohjn1MlXilfTi/8Qgg87lSkYpOKg5xlCDxwIzDvFoXN8K5LYVtgKTALvBA51OJQn
	IfjRRsAE+rc2M8+2D3V8qKMnmGeDsImE+UumtdHbNHSe7No3haOA9611sWLR9KWX
	DYg3aYeY5ea+GVzO+OKKjo83MY8yJwu+wmFfCFT5ysR8EmfA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq0m1shnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 11:16:24 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c85a298cd62so4381048a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 04:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781090184; x=1781694984; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UKEhKACBQ+XYELhW5r0yrk+kReOQiMsbSr6+zXFb6DA=;
        b=ji0WEdwkmnkCxiQKwosC9VZLvnCJW5Tl1ZLYnmQlFFfk9xVzmk24G6wlgG5dCalSvf
         ZOmkV7wq9DaukBK8rsiO99gHjs0RULOQffyq7X+jparzAmZNxyTgAojA/2x2d1Q6Pqv3
         VHR1rWbXN0XnHblTQ8t3er1UOROWtr1p/8yggBazTBbDgPuWf+ESvcs+UfPokINq9+2Q
         Ozk7MDgjMRzGBGi1MKbIcoBp3icTR6UafSLcznHyOR3oZ/P0VckPJSp/7bONVMMghVlM
         n0Bk9AuCiibV8HcIz8x4bTP6wgKHNMormNvK2JvqZn1adK82SsdouVgD1Sa+/8t648xB
         ky3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781090184; x=1781694984;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UKEhKACBQ+XYELhW5r0yrk+kReOQiMsbSr6+zXFb6DA=;
        b=nTqTKIYRpB1593tyFfC6G39cpuo8R8SoqRMFIgXRXZ0JtmqdtwrkyHs19wXSNHRGoQ
         LudnndvN2eTI/J8fVsHnWClKHFZagt42lInYNfXJQClfAwmkUmsBq0H5I66jdavftzXg
         Wh48GIoR6sUMPiVJ/u2I/eV4BupU8RNbeRNsnyujGeAglVqrFpLs/RJslsM2mjyNyMy1
         FMYsIEUmb35IDqz5jRRK+Go4r7Ve8T1fE09QGCvEJMHE6DekBjvuOCvrkdmAue1D1lSh
         lb8rGEHLArhZhkX8L8fYN5wMa9wvaFMg+ZnyUGJgFycWiMTXrF3txUR8J5ytFWKfqhfc
         RqqQ==
X-Forwarded-Encrypted: i=1; AFNElJ+wAsIJHKxVUVFS5Pd2ar6rjVDsnK/iwWv8bDk9M4s2KlQirUGvQ7VzLLaflQsH9iqkN7P+Qxo5JxXC@vger.kernel.org
X-Gm-Message-State: AOJu0YwqYug0hAPRORI1wD/K3FmWSmJ0JrrGPR5tem0jvsd+VC4UTnUc
	djNc/y5y4rlcazD9U40PIu4/X0A/9qgSs0R2m4YbI3MltBfvgUQUGG2QUEclyk4q6tdzbrFSeBY
	Mi5MYIGv+G1GCuiSzX5GECGbpZuHGL+2ubQAbJ7QnVoiBbig6YaQZOvhXJwdg7GlM
X-Gm-Gg: Acq92OGXGE6xS16tV1YIcOYMM8NMQkHdiQYSHMs9H4TQmifyQrKii71pjiyOvRHR3kI
	QVzCChOwMqYDzxXMRty4MDvfHYZTbGh9OcO8mhfFrBmkGFP0A4UkSjV/g01w23FsTvrRNfLjFt3
	B5jgrv+5ze6Mf3TMP/aStr2t85Vylz2NdMDUECxf/oRfhiy/0Uxst89/vCniM692w1DNshc5wBi
	ekMhqFs7qVfZiIrLFFbmRkTJV5y+/rHdKtAnkhRZ/lM7LK/l8h3h/x0tHNvsC7Nx5qTydh+Q7X+
	46i+qRmAo+EC0S2d5B+om5KPR4DrAVMRMdC5BufWKA9qIfPmLYOUolnYUHe7OTgsdU4gLItpY4c
	Vk27zqv7Fek/XovC8C9OSuA3a5W0p3FvLB6fDs37PCbUke6Lw2Je9x4N3et6m1GygSaX7c1/dGh
	vbTbEZePMFyGUrNAyfwVfgHFdufI94MkqJWbSf+YpClwvCjyA3XrzNRXjIFrf56w==
X-Received: by 2002:a05:6a21:6007:b0:3b3:1b38:d9c3 with SMTP id adf61e73a8af0-3b4ccd1f39emr29940021637.4.1781090183648;
        Wed, 10 Jun 2026 04:16:23 -0700 (PDT)
X-Received: by 2002:a05:6a21:6007:b0:3b3:1b38:d9c3 with SMTP id adf61e73a8af0-3b4ccd1f39emr29939985637.4.1781090183250;
        Wed, 10 Jun 2026 04:16:23 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df03498csm23896099a12.1.2026.06.10.04.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:16:22 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Enable the QMP PCIe PHY present in Qualcomm ipq5210
 SoC
Date: Wed, 10 Jun 2026 16:46:07 +0530
Message-Id: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHdHKWoC/2WPy26DMBBFfwV5XUdjD/jBKv9RZWEGu4zUBLAJa
 hTx7yVkU6mbkc7o6j6eosTMsYi2eoocVy483nbAj0rQEG5fUXK/s9CgDRjwciKOchoe0vtEyas
 AOvVil085Jv45rD4vb85xvu+Oy/spulCipPF65aWtgrMWbY0NpaCwTp56IuNNFxAc2Mb3UFOyW
 vxt0lZHj0bVkokkT3OjFUgIHWDCgNFhuyrxih+4LGN+HMNWfeT/37BqCdJhRw6i9SmY81jKab6
 H71fN037EZdu2XycCpfMmAQAA
X-Change-ID: 20260609-pcie-phy-99fcf91a02fd
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEwNyBTYWx0ZWRfX4tQs5GGMY2mY
 P8y+fN+TZ4wHEPfUshOOXIFWAFGZR3s4Xpxvx6OG7U4gJJQkjI2li4OQz2cbZNMRh8IMHs7Vjt6
 8Hw8RMihR/DhmH+pfBQl42dzTyZBxYJNdDn6MMna2GjOH//w9PwfQ95YWVugE7zp7Fd3pjF4gCj
 VG5LYPR65/anKIquHwLPY6O3wnTTrcbgRA9E/ygeo7K6XIYTgEdsa38W6Km34V+npHprYCKFMxW
 Wts/dYc6M5VlpZx6wkBWgbKKMB4GiL94wuo3oLw3ik0Uo5fr78Bin0BHPEeyGotzDJvHcu65AQu
 5X8foOyclKyJ8oVpoDe+UnjWnnabuStPDCY/zGfXyV/+6Ojj23r9keW+p5t/3vniD5hVyaebo9t
 QSaNFrSFIEnj7S84Xx4AyCRydhsqRIM/Y6PAVYolNPipE/aGPUNTWdBmOshf5efZuruF5XtkStg
 h9mlr4aT8HSCaexqrHw==
X-Proofpoint-GUID: HpkD_5sXz7UlosRMDZiZm8_yezlUnn1i
X-Authority-Analysis: v=2.4 cv=UdJhjqSN c=1 sm=1 tr=0 ts=6a294788 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=tBHTsUc4uvt9YXz8l1EA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: HpkD_5sXz7UlosRMDZiZm8_yezlUnn1i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100107
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309719-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:varadarajan.narayanan@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58259668CAE

Document the bindings and update the driver to support
the PCIe phy present in Qualcomm ipq5210 SoC.

v3: Fix commit message for the bindings patch
    Remove unused tables from the phy driver (ipq5210_gen3x1_pcie_ep_tx_tbl
    and ipq5210_gen3x1_pcie_ep_pcs_tbl)

v2: https://lore.kernel.org/r/20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com
    Had incorrectly made both the phys as fallback. The single
    lane phy is standalone and double lane uses ipq9574 as
    fallback.

v1: https://lore.kernel.org/linux-arm-msm/20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com/

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 129 +++++++++++++++++++++
 2 files changed, 131 insertions(+)
---
base-commit: a87737435cfa134f9cdcc696ba3080759d04cf72
change-id: 20260609-pcie-phy-99fcf91a02fd
prerequisite-change-id: 20260514-icc-ipq5210-0ab03f3a3e83:v1
prerequisite-patch-id: 0b6145b6635b18fe79fbbff5815041b43778c5ed
prerequisite-patch-id: 924c6ff7baf4283ac7991ee94c803a00fc5cece4
prerequisite-patch-id: c2fe1800fe769dccd37f94c19860a07f979e3c4c

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


