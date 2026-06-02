Return-Path: <devicetree+bounces-305727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7eevCdoAH2opcwAAu9opvQ
	(envelope-from <devicetree+bounces-305727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:12:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EFF630181
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:12:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=CrsBW21D;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=j49bQf36;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305727-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305727-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE716301DC27
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12793F39E8;
	Tue,  2 Jun 2026 16:10:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976BF1E9B37
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 16:10:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780416631; cv=none; b=dNoPv5eRUHH2DkLuRleEyLhQ6Ws69lvelG1hw/RDJLT7Tv1BwLQEiYisjak8plVwESjRdytYvSoGU292DhDxaYwlU/Um6lyGZjYDqsLQrwrGw/qysGS2T9JtKT+qTc979LgI71djlARX9p83wVmhaHjpwBrrvNEpbByig3Msfys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780416631; c=relaxed/simple;
	bh=G7eYHj9tlnDiI1d3hfnzgPcXdN7BBHFSjCI4dSopmyQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D6ulaGkwSZiy0Mj390GDWL8k8iFjlpWzjV8mn3m+uFDTR30rSADGZtBumbuNLQaMNYHkS+ep4HoBCHKWLJL+sWZsrkJLwUAAtrIaYB7LLmU0NVyQu5lVq6bV5QJ1DbBx6zBnm0dSLh+u7BqaBQxM58ZFC3NUHLGslfv7XKgWf64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CrsBW21D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j49bQf36; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652CP8ol2767178
	for <devicetree@vger.kernel.org>; Tue, 2 Jun 2026 16:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4wuW/Yokzii57HXL/z3H+3SCKWh40lWXglHNdQClPAg=; b=CrsBW21DYrzUoj39
	LSZG/g+HQ1czUCOfiW5AI9AgHw5zw6fjbd6pvyuNSmPbPF08VGO3D1slcgqznn9a
	3SINRsyYzPGI7e8cMXT9AT5N7LgsWlK+7YgQb0AGS7Dm3SicCXfcBxXY5/ss2+EC
	TSSqL5ZcyEIZaWXiG+daLy1ibhnuWr7zGH7J7s4pJE0SK9LOhH8siUV35CzuGYbk
	HEtAqlGgieVJErm0WSJVwESs3f0Tq/qgRupknT+S/Vm75Z3MdT5P8qdEgegp5KAC
	joxuomMDVECFRAKY1rJB13gE0gYslRkJhxFA0PtWxoZRbS8QudVOJ4gTzZUPO8Ze
	kGl5NQ==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehsus2dyy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 16:10:29 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-59ebc14be73so2079072e0c.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 09:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780416629; x=1781021429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4wuW/Yokzii57HXL/z3H+3SCKWh40lWXglHNdQClPAg=;
        b=j49bQf3601uDzXR6tODRWk0/amYq36AxkCbcWABfqyzYd4rBDCE8oMNngfg9ZRLe9U
         KKFmLc3Nms6QhltxfDlaMwB0OK/7Zb+M5NobtXdBzcdqHhMrAzx5vf6LSi++eqg9pHPo
         Bh6YosZ8/bB7qnSt3egS2k+10yFIcM2C3aKElNIjFabXCufsAyRlG8OY/e0ME0m9ak4m
         S21ZIVcKELddX2fnJ4TjMkbFSyAaLXWS13aFBBwH9u3WoBE3G85UXFaK5u71z+pCR2Ck
         qbi7nvPJj6G8e7yVhVGuXYna+uG0e8jIrMXh/O5RoKgqvYuewinouuoPoA6ZOao0cN4T
         j+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780416629; x=1781021429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4wuW/Yokzii57HXL/z3H+3SCKWh40lWXglHNdQClPAg=;
        b=jVdG9LlqyN5duTtBC6vSZ7GRrsGkFaq12Udh8i2I7BxVNeaDBRmznbbKw3qgmpL/sR
         it3LP3zFMIgYESNedA5uo00oFNKigDvVbIKfT3JbkA1A7uFxsmKaBCHAFLIFvTkOSpd7
         ed2+GOomAPQ+oz8Bbt5KzeBCDZW/tNoy99KdJs356n6so/dzyLn2I+qyUtIIwlEW5Jd+
         g2rHqb/wD2gu1vwd7AAmrm9E/vvAQD+tqZf/D/eD++Gc5XR45Vr+sTf5UlsRJzua7NO2
         R3JvCPMNkStoGFJFLInGvED9Sydfm3JaraxcvtaLnrmX8San+prqbaLrwIjPVIjNGC1Z
         As/w==
X-Forwarded-Encrypted: i=1; AFNElJ+q32LvIzmHI1uzFckRR2ap9wYs7fnh+VlWgGPU/STljeneGPfcCCVZuNTkcppKzKWhc7rIsbhq3vmi@vger.kernel.org
X-Gm-Message-State: AOJu0YyvVm4BbwST05vIxXrDGC6kXSR9iE7zVBZ7SseOAeUPq0iTq/qV
	jpKfcK+7peuurDkJEhHpwpqPNXz0BvvP72Dy+VT49xtZk8QcRw2G3BwgCrnAferkDeOB96iHfPA
	Q9Req62KvZhz5f7FOeAcxJTJIQ/GDqif+v4O1kiaMbvhjwUUat65wSmD3c4aI2DmI
X-Gm-Gg: Acq92OFE6Dm9qEpfuMy62W3JvC6j2nVUNQ/91qe0wqa59g+fIVaq9MyS/ARdAyVQ3VP
	rV3E2UI5UEFU/uTKYVYC3SkGCdXho4DYu/k0CXm8kI7yiN0gy99DQ6kkFnUu1GxA4vMyA4kSbF6
	WqsffFCQTEUkDG5BtH7g/gtcC0TdCzli6L+cPbOgDMM4TwjyrouHUrk0iba653SRcv7YM/ZQ9iZ
	PHtwbYA8t35y9jDpYz6ICpYs1XGIV3zyPkm8HY22hJIOJ0TRII9Y+8D2XPGJIVG/vdzj7iDCWmt
	cypqezIldbu2XY5f3nFUAGEZ180WDGFWlomybbiFV0wf+Vgbg/Wn8mdUycagiJdAc+hb4VJ95d3
	NZuT0/UjwrMtdOiHqp+2qSMaMAPjOyyX+CSwMiIkn0PYEvMzF/KgVHNi6fwPcMyme17Xj3IcpQ+
	u/
X-Received: by 2002:a05:6122:1984:b0:5a1:de02:b177 with SMTP id 71dfb90a1353d-5a6974e7e80mr582300e0c.13.1780416628875;
        Tue, 02 Jun 2026 09:10:28 -0700 (PDT)
X-Received: by 2002:a05:6122:1984:b0:5a1:de02:b177 with SMTP id 71dfb90a1353d-5a6974e7e80mr582191e0c.13.1780416628462;
        Tue, 02 Jun 2026 09:10:28 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b0e37851sm80264715e9.13.2026.06.02.09.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 09:10:27 -0700 (PDT)
Message-ID: <13afc706-2513-4fd5-9e5a-50c4307508a2@oss.qualcomm.com>
Date: Tue, 2 Jun 2026 18:10:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/17] arm64: Use EL2 virtual timer when running VHE
To: Marc Zyngier <maz@kernel.org>, Daniel Lezcano
 <daniel.lezcano@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Hanjun Guo <guohanjun@huawei.com>,
        Sudeep Holla <sudeep.holla@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
        Mark Rutland
 <mark.rutland@arm.com>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Ge Gordon <gordon.ge@bst.ai>,
        BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
        Jesper Nilsson <jesper.nilsson@axis.com>,
        Lars Persson <lars.persson@axis.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
        Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Dinh Nguyen <dinguyen@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Thierry Reding <thierry.reding@kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?=
 <afaerber@suse.de>,
        =?UTF-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?=
 <eleanor.lin@realtek.com>,
        Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Michal Simek <michal.simek@amd.com>
References: <20260523140242.586031-1-maz@kernel.org>
 <8633z5ugzi.wl-maz@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <8633z5ugzi.wl-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uoyQquePE2bbY60hXykWhCkqQtWGIA8H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAyMDE1NSBTYWx0ZWRfX60vKL1BHtr0P
 hYjDG4H6zbzUhcH3iMehlVWMSFX2XExwx61EHo4AvuX2rOE5t37i2V6pyKevAn0M5ncCiuQrn2i
 WKpCXVcEGm6NzMkiESh4jKfsxu6D3Sdd4rm2T878IWrKCrJeXIKjj41NmllWGBlO2NcjFvX+O5s
 s1XhD+qOzvPcmLlFET7GZEYZye9R2KS8IzVPK6qrVUK9wgK5sY/XAvUHMshTIQj0BB8GADuvSjn
 JPuuWEB6jFUOCeAlQsnCrmIhBtjhtKtJWSPvEz8mupKwDVLdlYlsRQNkzHyCNulbdq5lIo6cr3w
 rUpqMLCfZzrGc2HOsDGb1I2edznDcXhvooO2q2XTkGgHKKBFidAjpatt/7lSnHvwWHEJUV5wpRo
 wmlnzrJQPAs9Eg5Ac/XzYpqrdml37uydWnuAKx4UUlyRHYKfc91PiHV5dqOxm0qpcWDs/ay5wwI
 +hqgU4/UIVZ4Y9AfJUg==
X-Authority-Analysis: v=2.4 cv=ZYAt8MVA c=1 sm=1 tr=0 ts=6a1f0076 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=uw/3876vWhRnNVL35W6mqQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=0vUytTvmGukYalHcjhgA:9 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: uoyQquePE2bbY60hXykWhCkqQtWGIA8H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-02_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606020155
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[48];
	TAGGED_FROM(0.00)[bounces-305727-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maz@kernel.org,m:daniel.lezcano@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-acpi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:lpieralisi@kernel.org,m:guohanjun@huawei.com,m:sudeep.holla@kernel.org,m:catalin.marinas@arm.com,m:will@kernel.org,m:rafael@kernel.org,m:mark.rutland@arm.com,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:gordon.ge@bst.ai,m:bst-upstream@bstai.top,m:jesper.nilsson@axis.com,m:lars.persson@axis.com,m:alim.akhtar@samsung.com,m:ivo.ivanov.ivanov1@gmail.com,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:dinguyen@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:a
 ndersson@kernel.org,m:konradybcio@kernel.org,m:afaerber@suse.de,m:eleanor.lin@realtek.com,m:heiko@sntech.de,m:shawn.lin@rock-chips.com,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:michal.simek@amd.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:martinblumenstingl@gmail.com,m:ivoivanovivanov1@gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,huawei.com,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,nvidia.com,suse.de,realtek.com,sntech.de,rock-chips.com,linux.alibaba.com,amd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89EFF630181

On 6/2/26 16:58, Marc Zyngier wrote:
> On Sat, 23 May 2026 15:02:25 +0100,
> Marc Zyngier <maz@kernel.org> wrote:
>>
>> This is the third version of the series initially posted at [1],
>> which
>>
>> - updates the ACPI GTDT parsing to deal the v3 layout and the EL2
>>    virtual timer,
>> - moves the architected timer driver to use it when running VHE,
>> - fixes a number of DTs to reflect the reality of the HW.
>>
>> This results in significant performance uplift in deeper nested virt
>> scenarios, at no overhead to the host.
>>
>> Patches based on -rc3, tested on Amlogic SM1, QC X1E, Ampere Altra,
>> and Apple M2, as well as KVM NV guests.
> 
> [...]
> 
> Daniel, can you please pick the first 3 patches? Or would you rather
> have them routed via the arm64 tree?

I'll pick them up

Thanks

