Return-Path: <devicetree+bounces-321177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xgXUB8u6S2pMZQEAu9opvQ
	(envelope-from <devicetree+bounces-321177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:25:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 559A9711ECD
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:25:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=pEBEjvNw;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=AAvCXRPf;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321177-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321177-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30DE8355EE06
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245F54C6F12;
	Mon,  6 Jul 2026 12:45:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8667B4D8DBA
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 12:45:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783341935; cv=none; b=ZIfAcf+is0Ocy+dlsbWc1MUIr3WcrjwMdVDJ9i3goFQ86nB0h8JSkVvMp6ke2lpfAD/Z1z8OtRLSqbxe0xBlx4LpW87MMAsP7jD7InqxRsBAfGW0WN7z0uAwer8WQWyjFA8t8V9R2KbbmX8mMpDnG7vkIOF9w+kbnsTKFxJtKyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783341935; c=relaxed/simple;
	bh=RlYbNp2S/NZv47ECKrSIoSYkiYKDbdmiYZZE8XOQPr0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WamvUrFd2gLEv8VYhWXLwkasi+jJqwDHykYV4yX0SlSV2WHqQMDMu4Pq7KV2Q3B8ZDhSnTBF/y+NEoZsS7x6nsqjXBidwW6/OwYRhgPQL3ptzq2y33awysiL917Cgs+7wo91A/OC4KMB/uUTO/iW+72D9AbYPt7fLWxjnAsshVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pEBEjvNw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AAvCXRPf; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxNhp395432
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 12:45:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yRKVE6+HDuRkKaJoGIMm3hMcr4TYQvxtkFJAIQ65210=; b=pEBEjvNwhlEFv/FR
	75AE6ntaaDo+cjE9zeJPc0tRFg9z3KEvNn2sDMpG038HLDN/diaoXLolHmUP1hEr
	3arM67ahYMTcG3V8nXNhWAiEN4NmjXEWxxzVVBabo/tFT2+2AQ4tjpHlfTWYVAmY
	+xbmBYuR2n/bDtuDP2Mr3eQDXT5BrgiMeteyJiqv5mzdjEJH0yidapM91Hqnhlxd
	AtBHzIdyfOy0z3kt+e5tQOM38bwXAp9zivS0jvN/+DnccuD4uPZCewTvb/jSArUE
	W7auaRpL3A8EFHLyO5xFeWMBzjGySF8SF76ztXqsecNdCCpIbCGkhHcgmrSVL0kD
	MLSARg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89qpgqnr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 12:45:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92d1cae5939so296117085a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 05:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783341924; x=1783946724; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRKVE6+HDuRkKaJoGIMm3hMcr4TYQvxtkFJAIQ65210=;
        b=AAvCXRPfDR3f9j4Vn9lJ2mToRbTjam3XgsMDrwWeQi7Thir022jfL6SzcZ3g9eB31Z
         uoGDlcmjls0qCX5Mmdr3wExj4rT876sJghAHHqH6zuvpHNtxFoXnUHQj0cIuK/moQbIq
         naE8XXD9EnQc2+PIHvSO5cosZ//dMRfIKPlWlldd1MOG94UNp9zSRzWb1WXz3ZYvob67
         bhdCdbytQzyOwFS7UCbt+zlrHRXHcoTI+pPioPx6Nv8G7j9CTwdahOVtlilaL2cU7nOb
         92UoKgBGYIsPnsFSe240t6IGSudwAAtf12JP0Ph3nnJwUgwbOCi0CKvBJvyVFGVI1L/W
         YnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783341924; x=1783946724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yRKVE6+HDuRkKaJoGIMm3hMcr4TYQvxtkFJAIQ65210=;
        b=Rq+qZsDfhe0LGG5EjBtArxDSK/sS0xCIq/zfnNmZ14GyYWuQZ1WHaA200LR8FeAx48
         6qPV3+ClKhaIEY4Pm+ZBSg2aiUuAFiL9mFI7E246k4HBuv7YQ38Xyiniw71/duXeAdG5
         P45dGAo/7fk7+zSQIlbNUN76xnnhMgL3HhkKW1VrI8AvIFRrViDT0MX5xRk67ayb0lZW
         /7cQ+kiijAQzGLbrxRc3t2ThR1bEWR70HXa/DB0FP7Oa3DrNwQseN+qTqc89RWBm/dhQ
         gjJNDSTROshCkTwIpjGwJAUpWqQS1t1Se8uMhyBCfbIZvisKoKFatViWr/t+fL6vA1IR
         M5nQ==
X-Forwarded-Encrypted: i=1; AHgh+RpW2oYP/vZHhpDuckR8Yt72axHOkGqU5cCHw0j4OOmTxJsBHH+20GUmRpRGjBDwSNk73uuT3hnMxhsp@vger.kernel.org
X-Gm-Message-State: AOJu0YwmrvfsQ5VjlKZ6gLrXprVfzJ/f1K8NGEPwEO+CLZw7ol1CKcJq
	PExT2bgOiyPlC/5TTUpKyWmgBNV5jrEdXh9WIL4+qNjIx/3FizdGPIYHntYhQeYRv93f/K4d1wX
	ryBYJgyVnjDpyQ70CyO2OiembOT1JVwaw8WnJBPmJ4ZqMRteA6aE/iJJ5FrfDdZLF
X-Gm-Gg: AfdE7cnznT+Q//60RpNywO1+Xy8sGMLy5Xa+kX+oqL05ZHe18zZa/z2v3ObXKwYE/1E
	6Wp1BK3eL2EITNFAsWa94wjxoJhipMyIuspMuWDyVe/34oZjFCiCAhIK5ksf6habRrgoTIUFfVX
	0ZRYmC1sNtdEu3PUas5BHrr2urQ+5tDUGDSmkRZnRqe9nZ5tP01Ogqps00a8BMluZz+9PwUcyLG
	D/0tA6fBGh8YKTrXkibkUBcaTfkgkpAq76wJQNw8Pd/DzXRZsCOluDHKi/ssRoS/BuN+jAZMW24
	ZceUSmflElqD4tolwH6X5LX4J2F/WB0Cki3U6s77t5oqXnjpxWjfmHOZ0tFxBgjqQmD2KZ7jOVw
	wsBxQbKZV85E7Qzpl5GFcwyvLMPaStWxXlonMwuU9
X-Received: by 2002:a05:620a:8803:b0:92e:9d63:a6f4 with SMTP id af79cd13be357-92ebb4e3acdmr52346885a.18.1783341924047;
        Mon, 06 Jul 2026 05:45:24 -0700 (PDT)
X-Received: by 2002:a05:620a:8803:b0:92e:9d63:a6f4 with SMTP id af79cd13be357-92ebb4e3acdmr52336785a.18.1783341923456;
        Mon, 06 Jul 2026 05:45:23 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:86f0:c42b:ef4c:d3bb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0a55be4sm22126539f8f.31.2026.07.06.05.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 05:45:22 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 14:44:23 +0200
Subject: [PATCH v3 11/20] pmdomain: imx: use platform_device_set_of_node()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-pdev-fwnode-ref-v3-11-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
In-Reply-To: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>,
        Mark Brown <broonie@opensource.wolfsonmicro.com>,
        Thierry Reding <thierry.reding@avionic-design.de>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Madhavan Srinivasan <maddy@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Doug Berger <opendmb@gmail.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
        Ulf Hansson <ulfh@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Matthew Brost <matthew.brost@intel.com>,
        =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Peter Chen <peter.chen@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>, Bin Liu <b-liu@ti.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: brgl@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        driver-core@lists.linux.dev, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        iommu@lists.linux.dev, linux-pm@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, intel-xe@lists.freedesktop.org,
        dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
        linux-mips@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        mfd@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=RlYbNp2S/NZv47ECKrSIoSYkiYKDbdmiYZZE8XOQPr0=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqS6M4dqtScPW3ltfTa349WlyF4Im8UV3+gbDjf
 +ziQYf21tGJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCakujOAAKCRAFnS7L/zaE
 w6cvD/44iwh0bO9U8phWJF64dOWOUQmSK2XBLJBtOsastnOKG3frrhIUgQnJ6slnJp9/qK9Sctm
 /VnPVLzutrQEPYTnyYTwegxzfw7z65c+lpG66v6oMVhuEL5dLy/ICU2X+YiF50ymdi27qbZl9Ru
 N7s8Em7rQs4VT53ze/irqmQe+MI5duU6f4NajzV1rW2r+kWg5CJMcrHSndCLLP8wwPdl5R7y8JS
 kYnh2IA3ZdI52TAByyucQlrH1mIQAaAOuanxZRDHGxuaXM8YUtSVvXsoetlgqxw3DCNvaY+wc/J
 DdF30T9KS3cwqlGuzq+vdBBLwJR7LQwXow3VvpGPl2rWjOtJgoygngawJ04/2ndETxEAoD860kW
 RbjA/OtAOe90uYdXCO3LJPTU480tw6BXD/kUFLl2WJUNf03mQBP7TTJDtk+NK7++D4AKFcce/3D
 v6HyypGAdrulGTOBiI09UNzWl7ckMWOWTPo5tgWmIyqOX+keqQXN4SVa8pc/aXcw1oYzaJYvmIE
 1oSNBqM5iMtUohuyDC+ESCLz/kypyOfkI/75EzoaMoOfyuD3s3GW/kC2KQT/Tc0sVNfrEewGFs8
 YrDIoeAOIWV7FEygNZEpjcznlFCcN2Ex1WrAiElKYvzaqDhVa99OdUeAEwGgNXIU+kynK2Czoqa
 wT5QHhsSQJm0POQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=c6qbhx9l c=1 sm=1 tr=0 ts=6a4ba364 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=8AirrxEcAAAA:8
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=vTWqO7tZ479lFkmzGCgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: txESnCPMhQQt1KqE_AnstpwQx5zM7VBv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDEyOSBTYWx0ZWRfX82buCZRSag+x
 aRVeSYVZUo5k4IB5hQpNKb1eU8MuMesGVBS48GSlxnroexW7Gsf42UaSlYLH9Dc17Tphk17695j
 IICwvR9HAw6Oeuhxar3vuI+fcQtETYcN2Yv6oxy6mE387SMwJVThDNduDLIXfnHXkK6wXNpnGM2
 Pdx0YVNzYevdqQDTCaljexSxdeQk8HVHWn0TbR/OnQXfnelkWI8uVKFHg1aB/An2TGLYQI2M2gU
 SDzyCABMXiIbbLPe1lvlM3fOb6V6Htmn4Wg0teRfXry7wc932mgjgJ+RoCvwIF0npcoilVfcEcg
 JLv4q9CIjWbBZ+JXeYBBWCbMaM2an4CEg0mHHYt1OFpbLXnbyEtFSmsyyE0UAWOIYhNa1LmDBCd
 JvywSg0knEyJdmS+NLBqEA4FvUQ1i+vMPn1w7ZXNz4DufDKnTIk73eDhQBT1TCTgAdl4s6qsQJE
 hcQYIrDe9wicNgsTM8w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDEyOSBTYWx0ZWRfX2M/MnjMfU+4c
 bOYlFa6Fn08+loCMyo2NSyb4Rfw7+yRCmy7+Fqkz86zE0zR+Gt0DQ+QusS7nAp4C+HIIIJCIIkD
 aMdssmUunlCSaXSrHYv9XobCTJVzwyc=
X-Proofpoint-GUID: txESnCPMhQQt1KqE_AnstpwQx5zM7VBv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060129
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321177-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:broonie@opensource.wolfsonmicro.com,m:thierry.reding@avionic-design.de,m:sebastian.hesselbarth@gmail.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:srini@kernel.org,m:gregkh@linuxfoundation.org,m:vkoul@kernel.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:andi.shyti@kernel.org,m:andriy.shevchenko@linux.intel.com,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:opendmb@gmail.com,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:ulfh@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:rodrigo.vivi@intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:peter.chen@kernel.org,m:paul@crapouillou.net,m:b-liu@ti.com,m:p.zabel
 @pengutronix.de,m:luzmaximilian@gmail.com,m:hansg@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:krzk@kernel.org,m:benh@kernel.crashing.org,m:brgl@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-i2c@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-pm@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-usb@vger.kernel.org,m:linux-mips@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:mfd@lists.linux.dev,m:bartosz.golaszewski@oss.qualcomm.com,m:sebastianhesselbarth@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,opensource.wolfsonmicro.com,avionic-design.de,gmail.com,lunn.ch,davemloft.net,google.com,redhat.com,linuxfoundation.org,linux.ibm.com,ellerman.id.au,linux.intel.com,8bytes.org,arm.com,broadcom.com,nxp.com,pengutronix.de,intel.com,ffwll.ch,crapouillou.net,ti.com,kernel.crashing.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,intel.com:email,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_GT_50(0.00)[67];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 559A9711ECD

Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the OF node for dynamically allocated
platform devices with the provided helper.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/pmdomain/imx/gpc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pmdomain/imx/gpc.c b/drivers/pmdomain/imx/gpc.c
index 42e50c9b4fb9ffb96a20a462d4eb5168942a893c..abca5f449a226fbae4213926e1395c413160c950 100644
--- a/drivers/pmdomain/imx/gpc.c
+++ b/drivers/pmdomain/imx/gpc.c
@@ -487,8 +487,7 @@ static int imx_gpc_probe(struct platform_device *pdev)
 			domain->ipg_rate_mhz = ipg_rate_mhz;
 
 			pd_pdev->dev.parent = &pdev->dev;
-			pd_pdev->dev.of_node = of_node_get(np);
-			pd_pdev->dev.fwnode = of_fwnode_handle(np);
+			platform_device_set_of_node(pd_pdev, np);
 
 			ret = platform_device_add(pd_pdev);
 			if (ret) {

-- 
2.47.3


