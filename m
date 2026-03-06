Return-Path: <devicetree+bounces-272036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPO7MGDDqmlXWQEAu9opvQ
	(envelope-from <devicetree+bounces-272036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:06:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EC12201F8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3BFA310894D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFB8838B7CA;
	Fri,  6 Mar 2026 12:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DkPEPXlF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FWoHE9vP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2B038BF7E
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798594; cv=none; b=favMZ+B8MA70qawEfNIhWCMmtx9L2IZXw1Fk6SrOuProBu9xAbtN5vwO4ZA4XSTmbdQSiIt+cO9CzVz0+5Pq/DgPIvJSMHp2GUjDQj5LoKhtEIMMXZsQqehD/15CPtB+e2eTYp9PrBuMnZ4Muz0jS5YXknnz/z1LwEfQdnFoCNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798594; c=relaxed/simple;
	bh=5rYSy2QI21ctfU/oCE4ETdDO/pmYEesEULMS5ouIYTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UZoj4B0BIi2uxVH8PGLvJ4aV0XDEKF/mO2Sx8O0F2UrVwyg+ADmSuBbgn3gCyvUr/0M4Ox1q0wwj7mqbFu8s9BQRoJMBKHp3qIHMNyyvHUaaiv2gA+pQeL+QfoC7Y9Z8MSd4gRtZf7cYeA3w8aGzXGUVrErsG2JZq3nBwH/tL34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DkPEPXlF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FWoHE9vP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626Bb3tu629069
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3psHZCSU7hjtlT9gY0OP3vXiVKFHZurgCIluoZNxIHY=; b=DkPEPXlF1UXfWEJh
	0pQrcGxtK99Q82+fJ3Th8Cr/dyghFzF3dKPgzN4HBCzcSC6706Ss8uSZbm2jgXUG
	RTRPbuKJ1r4hyyzbXavhVFiCPaO6rOViOhS9fWAF3eMyYlpQgEO2Zk86aaeTAA4x
	G9HeRiTvshvQbJq2YlBmBMpzoQP8I4kThMyyMK6xjevnDgX6rGRydDvhx1DTPy8M
	5n45pGnBV1lMqsuzyBZq8F/ezGp3R0ZKUIG4FcxparqcI/w3xL2pld8Ne/pQpnI/
	LQbSrx7cJ1T+i1bzzZZkJ/JQs4BS5uTcRLLC2x5lbBwDW9wbS8sz/wZ/sB5m+OTC
	vyDp3g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqj4saj79-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:03:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70fadd9a3so1235759785a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772798592; x=1773403392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3psHZCSU7hjtlT9gY0OP3vXiVKFHZurgCIluoZNxIHY=;
        b=FWoHE9vPlJZ2INFueMHFFy0tQ62/pDcGLucz49nt9V92E7+2AsItcBpVmccEjpgKF2
         pPdq6nmYiI6SwBMU4gyFTEtWhV9C1dDnys5EZQNvRn4A2rlsI0irkNk4euSsQoUx8HtV
         cfLp9eTyD1Pdl8j1I9AFnXWNtvoYP8Zmje2AnUBwnxohgsHCkTkeGjpmtlYj2Np3DCvb
         phWIy8JxlW+uXdWk7IYHgkgQRFH9fNqVnQ1H8Gy3Y4XeUipdBB0zXv6StP00osDzl69e
         i9Ga3k1fDh6ZxDLFZm1GebQ/iWfLh0O7d/via4oeAtSMdmaBawvQk7/xAgWbze0inKRP
         f5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798592; x=1773403392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3psHZCSU7hjtlT9gY0OP3vXiVKFHZurgCIluoZNxIHY=;
        b=C1JuXWG0UdQoUl7P4mHovbrMU2zwUy3/sSDFBgKtr7NaTdI0KicBPC57Arwr135itU
         9MXAAnM5f9zrt5wBBY2Y2KPuY1WS1XbpqLAPoaRAJ5DV35dQCYNFNmoeMvro1XgFQMGh
         frHACmwgdai3ArD3F3WKA76lLd7P70RWAs41Nr5fppxfRevfR2vIVwGm6guSBz+QOsR2
         oRA/ag5RLpTa7p4NaMfMDkctENJ8NzFcoLZKfv0wP9CaHQqcNWPKLpD21uz5V5HL7Dz3
         wT/9kIcO2YAzxq3G1XcCZbEbg3LAxjsJCzoAgz4HlPLqLU8r5E3MxDeTwrTeCUNbYrpA
         tqVA==
X-Forwarded-Encrypted: i=1; AJvYcCWPd+Jjzhs4qZJrowUQlmlTAVpUJiQ1b+PmgbbMdqSxBAo5+qyE9Mm7b3f7m4luYpxr0AhQh2Cay5NW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/z+2LR56AbAtFlGF2VkTWG7VJz3k4en5Xcw3jNgpbRw4hFgfn
	QQg1GEGCsNcq8/8HIDRT+duNeqmc8vqgYRX+/F/NhifdRcYlIZP9ty8DqQpIcpFzwj2N0Gz+LWN
	l36GQ5lbY7y+30w0rKtn0polq8QZIc/yE+9NO8HdcVsUkJzqpw+gZRwmWCSa14lVE
X-Gm-Gg: ATEYQzxcAxWcLzH0dsR65M0yIyl+H4GMdvYcj7a12l5eqdSLpWZsRaZnDmtL/ou9sBi
	hf2Ec++N9lTyjX448aoY6f5T9AL8EjCg0ib2gP0zkP6NdPi6q8Wrr4tFqPPbDo2TwDeAONi0iEx
	De+sQmdBGxKiWblWY5OFW2uaJ2iOcehNbhWRm9iLcOR/xF6l9BK/rbZPaP05ODmUHYdbFSNhv9P
	ry/eE50PfY/iLyqRnMTboVBkbvhrIt9KgqNIqdbA0uKbDB4NsBbcVY31rpt/aab5jDPRNFzC3a1
	OK9rC0ZC7uGEqLF6EvvhArS9wg9iG+Ufuh74A5/ArNr3NQbM3SGkRtP3rS2L7sVQHzsOkDZNvr7
	RdJYYDdqwe+VSOTaiNXiLsfAMaN4FH9nTVzESHP4/nq5O
X-Received: by 2002:a05:620a:269a:b0:8ca:fe7f:7324 with SMTP id af79cd13be357-8cd6d4cc3c4mr203246985a.53.1772798591517;
        Fri, 06 Mar 2026 04:03:11 -0800 (PST)
X-Received: by 2002:a05:620a:269a:b0:8ca:fe7f:7324 with SMTP id af79cd13be357-8cd6d4cc3c4mr203241385a.53.1772798590915;
        Fri, 06 Mar 2026 04:03:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad1cb7csm3410129f8f.0.2026.03.06.04.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:03:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 13:02:55 +0100
Subject: [PATCH 2/5] dt-bindings: display: innolux,p097pfg: Document ports
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-dt-bindings-display-panel-clean-v1-2-3086eda1efaf@oss.qualcomm.com>
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
In-Reply-To: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
To: Artur Weber <aweber.kernel@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dzmitry Sankouski <dsankouski@gmail.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2014;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=5rYSy2QI21ctfU/oCE4ETdDO/pmYEesEULMS5ouIYTE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqsJzy431khzS3DOx1z3tVtIB44NshwZ52yODg
 NLqdDBx6ySJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaarCcwAKCRDBN2bmhouD
 1x6kEACKC5cSAcuL+ePWXVnGd79cDsimOTN4Np84yaB/jd/p19+BeOsp6pBs70D7OrBHgKrdvAd
 19grj3flEm5dXc74jCuv5ZPH82yAa/AhGQTXgpPwdLD7jpXC5HoQ8yqKVBdF+OQbow9+GIWCSPU
 o4dY/IGtkmzxVp38kOEYXF3oqpSgAjkQMFJairKxU18NpifwiT7gMA/1aUwsBHldJH6PYnjirMq
 IEUqeCoo3QUWpkniLyM/4l8BR/76weyzv29Yo3vMzPNl+lov1XLh7ob51u8aeNnkEQmun3Egysl
 DQbnCqRFdS5fpa1pqqSjKGY3i6cQ9GU5I1Tpmx4a4tms3omtQ/yDEJgfSwu2vevng8I8hsbWzBH
 v4hT2R5YJE2VzCo8sd2/Oc3cE75/PfKW2K8+0uoz9ytahT3o1Y1N4cib1vNqWAtwfWiNHi1eQvS
 DOnQbyJ7nZhrr6hTZdtAAVNpWEOnf7Zzp2oW3zk95HcT2GU5pxGzpaind0xsYqkA4iKuru+ii0l
 h1YXKUEq+JpuTdV0Q8FrI+oVkEhDrQgUtibfQXYFgy00Znb0W8esJTHeAF1cGW5UIgi3CdGCHkC
 W/IGaVhbKQ0Md2qpJWqb8DmUrHh/XfJrJKKxinQ4p5YrOVPm5BxNIg70CGmwQe/kZaIndGAq1qb
 xhRSY0kvE3C/7LQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNSBTYWx0ZWRfX9o/3hqtPq7vp
 Q5j602c8hWSm/cqIvm8QqTF5cL9KxLTG9m4qKgRC12vn/vvYn6+sskR10W/Xs6mEj9BRExb09Uj
 5c9g/PV4Iv++xmrEuPeH3mM1ImS6e/P83Vni8OYH6np+LRuvefqREMjQ4Do7p5F1OjNecHo1swJ
 v8W/4m6tO9bT4EPeXNH6TojBM/UuDx4x7QzXeDRDbP82P6GFV5dfuhIq5oeuZewptVvksluUP1d
 UxIvpWoltIGGtt+PkOQ+IX6rxrZiFAZrZLjxCjpgHlZrvAZOMIbMWa7rh1gi0AijVb4o/eoZyCG
 WTYlOLrSRJ5mHi3t5YrjgCfqB2FmkrJ+sJ09Ujcg4NsieJiqNwyqbTCzLsQ+FIUkvu7LaK1J5F+
 wBGrCm12q+WzC/PmsDQp3gSa16shJf7OLzUuzlUw34iTbMGfatA8nXdLm06hn1BVWiUJrsdX89E
 UJrzEdgtT6+JB8v8Wrg==
X-Proofpoint-ORIG-GUID: -In2jJIeuycmH4UI2o7FQ2ODurkDbhOz
X-Proofpoint-GUID: -In2jJIeuycmH4UI2o7FQ2ODurkDbhOz
X-Authority-Analysis: v=2.4 cv=T8uBjvKQ c=1 sm=1 tr=0 ts=69aac280 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=s8YR1HE3AAAA:8 a=C5Vx6WpDZy5qlzGxMHMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060115
X-Rspamd-Queue-Id: 21EC12201F8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272036-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,rock-chips.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

This MIPI-DSI LCD panel must be connected to something.  According to
scarce web data it supports two channels and it is already used like
this in DTS.  Reported by dtbs_check:

  rockchip/rk3399-gru-scarlet-inx.dtb: panel@0 (innolux,p097pfg): 'ports' does not match any of the regexes: '^pinctrl-[0-9]+$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/display/panel/innolux,p097pfg.yaml    | 26 +++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/innolux,p097pfg.yaml b/Documentation/devicetree/bindings/display/panel/innolux,p097pfg.yaml
index 4164e3f7061d..7c75e01797f6 100644
--- a/Documentation/devicetree/bindings/display/panel/innolux,p097pfg.yaml
+++ b/Documentation/devicetree/bindings/display/panel/innolux,p097pfg.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Lin Huang <hl@rock-chips.com>
 
 allOf:
-  - $ref: panel-common.yaml#
+  - $ref: panel-common-dual.yaml#
 
 properties:
   compatible:
@@ -28,6 +28,9 @@ properties:
   avee-supply:
     description: The regulator that provides negative voltage
 
+  port: true
+  ports: true
+
 required:
   - compatible
   - reg
@@ -52,6 +55,27 @@ examples:
             avee-supply = <&avee>;
             backlight = <&backlight>;
             enable-gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mipi_in_panel: endpoint {
+                        remote-endpoint = <&mipi_out_panel>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mipi1_in_panel: endpoint {
+                        remote-endpoint = <&mipi1_out_panel>;
+                    };
+                };
+            };
         };
     };
 

-- 
2.51.0


