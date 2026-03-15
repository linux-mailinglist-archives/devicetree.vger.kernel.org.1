Return-Path: <devicetree+bounces-275810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKtuE6vgtmn2JwEAu9opvQ
	(envelope-from <devicetree+bounces-275810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 17:39:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E867F2917F7
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 17:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 039423018D4C
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 16:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE56372EED;
	Sun, 15 Mar 2026 16:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EALUhEw0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W5eEspe7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC72637186A
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773592743; cv=none; b=TMiRPNk8M3DuV5Ybou8kGjKNAj28ggdrfIDQVEdvTU/1S/ocWsPTTUyIud3hXjAhYtSYK6AD+k+AL5YwDy0kfVHqUC3tEO8eVw9upfR9EK1J0gVLaelx8RPrHYCuuxh9YvthBWvyoIMy6N60pgFk7xlTytLiHXDvZM5efR0PQM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773592743; c=relaxed/simple;
	bh=N6sWnPVYlkWtJGlhWSZD1h8oJ6vG9zrZFh1ZLS4cIqM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p1z5mPHnPxMrmYYEUFFfL47kC6SNIWtSEyMinrCz8JSy8fsFVa9VMIr0TLuAS0o4FAtQ4y04hO24JC4/IaHvjp+wUuTV3gfNzQX14zCLnsIBal6U87Ww02YWjWjcTewpQFRvUV4WlthzET8mB3h9nkNk3MUqUmP9GJfCJTTcsjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EALUhEw0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W5eEspe7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62F6TmH71839613
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 16:39:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pagjlBgHRFmM8TNjw/u+wIrjp7WABcDLI8XdmTfMjzc=; b=EALUhEw0aw/16p4Y
	EyHooyKFmsvuX1RXoAFKa98QKult33Jur6ez8ny+4ENwUi67L2XhQ0Pg7QbxvuXA
	FFS63fWdXE4wy4oG26ij5LVkXLjSWnn+H7qqz442ojxLyxceMcxVqvy0Hp5YNqyR
	UBuoDLF9Rrx6GkZmppBJBXLKBtMrZ9MBPVuX4IVzjdB9P2b1PAEURtcGnbzKkujg
	YW+JM6aqP+AdmFylE7V2Hh8ZdJK2nPLYXqCU9Uf+8fMoNXD7Wi8vUKrZmoD0XbMA
	Yq/F7RkQty9EHuHDmDcm55MeGDp7uTUQypv1vL0BEpQy1GX1uPIojhUuOrUysRhA
	zZ4YRg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5jwq9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 16:39:01 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35a0998a441so25218414a91.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 09:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773592740; x=1774197540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pagjlBgHRFmM8TNjw/u+wIrjp7WABcDLI8XdmTfMjzc=;
        b=W5eEspe7r6Wqm59vE4O+L6kRRf+47aC/tskJTtiVG3lYKYeZYZf/VezcTec060cc36
         wuLOtQ1Q8esuyNTiaIrxl0AQE5BNdSeaPiFTlDZTkkPzkj9KFHOdUNIZUAm8ByWBpH+9
         5MX843bjilNaGSKQy6+bWiqW9lc+N8d5Yaz+a7XQ8WhKMXQwjWnoxHjKd3TmODANDG2P
         E3G554tDYwVa9WvW+jEVzt2ezYOTXYR89f8DJOX8t9sdGbpQJdIntxsuzm8Nse11rY50
         xKpNVFGzWjtXoc/KzzfDfQIgu0Gg+vNn+oh1SfyRqJ5rO61fflwMJnIiZxAawi7o1igK
         33fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773592740; x=1774197540;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pagjlBgHRFmM8TNjw/u+wIrjp7WABcDLI8XdmTfMjzc=;
        b=U6WbTGvE5NV7dJ9lMLTs+IKB1ztcipwIXaMUB2Zt3ULBbwLZnbU5TIoNfb/RoIoQqp
         ec6CqmgHvShRuB057nal/N3/XI3BUYhFaEZJxHJltqAbiC5Q7LcbpguHqfsf7ZFuUNdz
         Sx6Nky/zW2epr6AJcLTyS1Fj0Gd7l5BNBEhsdBiTTdmCPgz39NzblqTjqox6wEvrn1HG
         2YiXd6/c3WBYoD+9XP2q1A+vnl8NflVpQ5tr9UqRXKBPETwgfHU8N7M9OV/4pawKDV/Y
         chz4rmqqQO/c7eGzWWB1br2g10Pb978Kndvj+fPkcY9tKAv/vcFMmJxKqwLcKaRGJvnQ
         nD9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXpaXVuO23nDeBBCBSv1HY2Im1h5Zq0MIopH655aYj25QGCbmmIh1EUaiFfc5ib50PWVtNmxeV58OCZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzcZI6dTdv5PatMK1qkvlEVc3Zp/2IT/GmPjUySHhymdp4W2wEY
	AVQP/whXjG7v5UqzyX3f/9+5S4sgYJDjqFSTkYA8fEc1Y8k2jxRZODCxWDia51UFEYCbqLGgMMV
	nRj77QYJ2YB89Sbzd5WHp8W25gEB581iqiF9vx5tUS2dMvxMbAZk2YFA7/eXgBaDuu9NIK6GF
X-Gm-Gg: ATEYQzw3KKhX1e8DTJTC8SxcSMx8XQN7Di2EME6kLMAYcPnKMtAXhevSqeU7088RUaM
	WO/UBBHpnOkOpuDXfDMI1Y5Duz2eQdrVm6xZ+fDB/0cNkd5YAHUROi/jlpz5oK1Lc6Xpe9xIGge
	RVS0PHn0Sx5AzUjq/VVLjmHxTzGk1npyKYZrBfm5dwbhxzzjXtMDOwHKQyRorCQZkVdKsXqKKVE
	c9SvaEyWSBMq7y0zBeEdZOts41d90FYMo4rpnH8BPaeyGLdOgFwNagqKcZdF1FIcivbiKOIMVw6
	RYlcf/F1skwnaAOLg8UPLg6t2adFUSTTpVYtU20qZeBBDnO8UqMeXXKUAwTGalnWGq+qFmeYM+v
	IrBXqBSEAU/JUSSqyaw==
X-Received: by 2002:a17:90b:1350:b0:359:8de8:1229 with SMTP id 98e67ed59e1d1-35a220032bbmr8989363a91.21.1773592740302;
        Sun, 15 Mar 2026 09:39:00 -0700 (PDT)
X-Received: by 2002:a17:90b:1350:b0:359:8de8:1229 with SMTP id 98e67ed59e1d1-35a220032bbmr8989342a91.21.1773592739685;
        Sun, 15 Mar 2026 09:38:59 -0700 (PDT)
Received: from [172.20.2.66] ([103.69.90.100])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b92ab7bb7sm2822373a91.16.2026.03.15.09.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 09:38:59 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
        kwilczynski@kernel.org, geert+renesas@glider.be, krzk+dt@kernel.org,
        John Madieu <john.madieu.xa@bp.renesas.com>
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
        magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
        linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        john.madieu@gmail.com
In-Reply-To: <20260306143423.19562-1-john.madieu.xa@bp.renesas.com>
References: <20260306143423.19562-1-john.madieu.xa@bp.renesas.com>
Subject: Re: (subset) [PATCH v8 00/15] PCI: renesas: Add RZ/G3E PCIe
 controller support
Message-Id: <177359273448.15703.17598535780042580130.b4-ty@kernel.org>
Date: Sun, 15 Mar 2026 22:08:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: zDvlQxLNuPTAT7b1kl0zV5wxNSL9D529
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b6e0a5 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=u/vbNR3bhf5HEmanzZPI/A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=rhLZDS0-Uv6zKdmvx-IA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: zDvlQxLNuPTAT7b1kl0zV5wxNSL9D529
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE1MDEzMSBTYWx0ZWRfX6QqjDhqmTcvU
 dz9saHyiv4t58VytGhBmDDSf787gXLhG2gv1gR8wqejlnG0sEtmaOMz0Zpq5tpjKAHgioMzLJV8
 z6y5Wl4PzyLFaRVUCEqVwlEaHADtL7l13yCS+iwj0Q//tc7TLBLUwhBvRvsZn+kApppK+D3gXkq
 WXLMeQsQxY7C2Rm544vSgBrJcZ1xirswq5sJWX3SsBc3WIFrNlvoO4iwTA89/5TyE3Cb7dRJ894
 x/kl+APZIuze+dISdUxB9kvY61fiSu7r+XheTXhy+wVTc+BmIGVlzKwUF2RU7xDIbZmBeXuJdeM
 NVuqe4/lllJMYi2jp/+yWDj8+56kV2BcekWwrapnaI/Dthk/nfbYyrwEVR0QZ/SqMpXGSE2x2yq
 hViUXLsuuvdKL4N4GMXJ7zmKaqQgmrTmyJtZKnwuv3fwGbrNAp9ur8SeP+gTQDhVfLiYKxRwqF9
 hp30sCd5zqsFB8vJfBg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-15_06,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603150131
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-275810-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E867F2917F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 06 Mar 2026 15:34:07 +0100, John Madieu wrote:
> The Renesas RZ/G3E SoC features a PCIe controller that shares similarities with
> the existing RZ/G3S PCIe controller, but with several key differences.
> This series adds support for the RZ/G3E PCIe controller by extending the existing
> RZ/G3S driver and device tree bindings.
> 
> Key differences between RZ/G3E and RZ/G3S PCIe controllers:
> 
> [...]

Applied, thanks!

[01/15] PCI: rzg3s-host: Fix reset handling in probe error path
        commit: d284389d4576e7c8040dc4cbb66876e539c6d064
[02/15] PCI: rzg3s-host: Reorder reset assertion during suspend
        commit: 34735f63748daa2ea27544259c3042b4948376bf
[03/15] PCI: rzg3s-host: Rework inbound window algorithm for multi-SoC support
        commit: d17a200a747b01e05bb0fc14d62fbb5ad6653869
[05/15] dt-bindings: PCI: renesas,r9a08g045s33-pcie: Fix naming properties
        commit: bb1b0f47f6822864c1689f46348efa42c5d4074c
[06/15] dt-bindings: PCI: renesas,r9a08g045s33-pcie: Document RZ/G3E SoC
        commit: fabce18494e5a4f388c70a40fa8351c911790d8d
[07/15] PCI: rzg3s-host: Make SYSC register offsets SoC-specific
        commit: 346dd3422ed9ff56f033726a50fad2da5677eb12
[08/15] PCI: rzg3s-host: Make configuration reset lines optional
        commit: 4ec4ccdaace40397638c305c0a36b423d2142a93
[09/15] PCI: rzg3s-host: Add SoC-specific configuration and initialization callbacks
        commit: 5f2c4de717786150f8d6cdbdbffb986cd3c59edb
[10/15] PCI: rzg3s-host: Explicitly set class code for RZ/G3E compatibility
        commit: 1e75d2e9a0e018b53f06dcc2e9345ac10f1aa174
[11/15] PCI: rzg3s-host: Add PCIe Gen3 (8.0 GT/s) link speed support
        commit: 5e9a5af5c9a2797a5e41e8ee565ce8108588f956
[12/15] PCI: rzg3s-host: Add support for RZ/G3E PCIe controller
        commit: 8197ec49a2062185f6bd432a19969ce0b3752e94

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


