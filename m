Return-Path: <devicetree+bounces-265764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDMmC+Uik2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:00:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C86A1144592
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1DEB03065EA0
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8125C30CD91;
	Mon, 16 Feb 2026 13:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vm+35B4E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b/UXavjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B9A3101BC
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249401; cv=none; b=l7GObS1m/i4z6QmA1UF0SJkj+mq6drsJF3IK7j0CWi17UTdnJyPgjlz2OR1G7L7nuRo/grl5qmabdwjwag35PAYycArWEDxfoDiH9Opj1lb+aTN7/jm9m+ZoV4mriU05ekllPTSUQMgUx6jLAaT6BiBmNq0XYlQ9w6iv5nC7elw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249401; c=relaxed/simple;
	bh=G/C8E6tnyrlc7aXmdiruS70Vl6WjWr9lu5dVB+apm5U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EFmhqcqIItT5zaZzxNz/W8mRcVoJmDvHOvLl6SoLINNhmOEaDdhtivCiipUJ98gz+HnfEMtWR/K1fCl1iaY2w9KAJmAPesLtLIPJRXLSFQ2IpbxUKMuiQ14HXB5cU7Un0gE0JtJdmXd3gfII6fLnqqWWq5VkkcGlPllAMSvA5jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vm+35B4E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b/UXavjQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GB5mdY1759447
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=o13mfHfcaClhodqHfsXTqv
	g6+iAu9vhr09PZvEYRGDU=; b=Vm+35B4EXUNf3We6914FZCS2lAas3sfi7ppyEa
	NXwlgIalncbdmozTebAjotlA+yZ9g5v7GnP/bW4OpTZarE6kMKE6w48aJDoJm0Dw
	HqLsX+gjBGeBnm+Kh95QmHYippFbHRlSaLftopClv/J6+wgvOMv7UKy7oJxM0sRJ
	9tlWUWfa2Key8XwVgZN3x/W/vo07+Q2r+uiNzE2Qp0jiguM2kdXwMP5aTmX0BLik
	1vlA69ifymTWVpEk6HAxBgfLnIsLurVhV8thp+DWnMgDLD4adUZQmwhYvtdNGYho
	B6Xq1Q5AHxkL9vsJlvkCA8MMYmm9dQKPYTzsS/pq93iaA4yQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbnv9hrkj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb42f56c4aso2040155885a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771249398; x=1771854198; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o13mfHfcaClhodqHfsXTqvg6+iAu9vhr09PZvEYRGDU=;
        b=b/UXavjQxyEkEZimMlRUlaRodQtsZq5AcBXDuKZ2bNcgV78wPjTLhdrdtKSg3FnJBc
         nlA0RUJJFirn8eys4x5PdRX1YzMVKeuuoF8zSt++J1kMlWD4JEBPdNX+bOmCk5BTcG84
         HGFJgr3TxUq5js2uCZDXGt5sSqua/GDmvgB3c5kQ3pTOB52Qmm5Sibn1TPa8qK7uqz34
         8laNLR2554Oc4ts0ujqhC4oRlP8aH8B2TjOXwf4S+xsR2rycp7Z0HPL8hTwjIpRhkz7j
         w9KVluS6qYbqKWwglkunpfbGRsQTSdvM4FO+G7+tWk1R4ez/EQADddFSL624X3pprLC1
         Y18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771249398; x=1771854198;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o13mfHfcaClhodqHfsXTqvg6+iAu9vhr09PZvEYRGDU=;
        b=SIRCxrRo723cuy4E5wBY3CMHtBwQjaBFP2TwDha+JnUDkNXIUh4aMHy/oVMoTM4ohW
         b0E8lkjwYd7xTVru3PJ3k9h+g4LnlKLMkFW1Mkf1fdhFfHNdqLkm0WVrj2SrK7pjlSEh
         XUOud0/iTzn23c91gv96pWsiclWleACPxIy7yPumX+9kUWdsTWPBc+RxvcJYMOdB1JJJ
         BsRQJrsmbOheQeiLN19WxrRef/Yi5c2wZ5r+s9AlwgCdiYnYynGpHnrKVy2M6mwmafDM
         ceUpxRrkNVUQKAx81dC447NFfKLpj8tMhUvf+5LnhifD1NaMV/Ljd7qu1gld2+G1m5X/
         b8LA==
X-Forwarded-Encrypted: i=1; AJvYcCVlpsOu2yoUs8I3pZOW8+N/Bm2JOYK11EnTFNs411gmj35R5BPv9pkMohviFZ+kkthmZSu5C9g6nWtc@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ9umyK8XDOhRvxcrfvON7XUkfx1Ls4AFKGwJ0L29D4SbfWae+
	XCYfcQCd25wdp/wu9RmPy28k7JfAVD9Jxv6pnTkMiOA0uIWQpIo+UCvzQB/T+Pb6tovY0R33ihB
	xLGyrz0qqKr7YIU5lRWZUexWiWq0yPVuyD4g6b0662nCq9UAPU1y+a/ska+2TnhrV
X-Gm-Gg: AZuq6aJGQGNcXzZykme/HIsS1PTwrgaQnVJbUOBBJBJTDewr934QL3jetec6vLvn45o
	DR7pHgAgHEbOHwxtLD4eohe7+NQsxMdtRAS9rsJJjFmGUOwExSGIvpl6Nvj0uS2MgEiM+3dNRff
	e91a10nZJHNxDOAhuAY/vp6FfR7EQge98KMDCJ9rimWy3DccerKLBldQ4D7D+p4O/BEKbHPSEc3
	9gHBCaNl4CY4jWXKu8s28dMizrXAgbk9ZoXUsJv1WldqCjF10xslqzSC+AYnm1sF8arTtpTAEk1
	QOp1MofvRur4jsKbIHNdqS9hyVNZf1Zx4Mmaclhff/A57ceMP2EuVWp3qsd5YFoRcOR9ENBpRC/
	ksXjmW1uAu5ZleGPnwSY0biXAAd7xiw==
X-Received: by 2002:a05:620a:462c:b0:8c5:e166:fa14 with SMTP id af79cd13be357-8cb4249ab6dmr1296952885a.73.1771249398182;
        Mon, 16 Feb 2026 05:43:18 -0800 (PST)
X-Received: by 2002:a05:620a:462c:b0:8c5:e166:fa14 with SMTP id af79cd13be357-8cb4249ab6dmr1296948985a.73.1771249397631;
        Mon, 16 Feb 2026 05:43:17 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm28883025f8f.13.2026.02.16.05.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 05:43:17 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 0/6] clk: qcom: Add support for basic clocks providers
 on Eliza SoC
Date: Mon, 16 Feb 2026 15:43:02 +0200
Message-Id: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOYek2kC/23NTQ6CMBAF4KuQri1py78r72FcwDBIFai20KiEu
 9tiTNS4meQlb743E4NaoiHbYCYarTRSDS5Em4BAWw5HpLJ2mQgmUsYFo9jJR0mhU3A2NEHMEIq
 aYVYQ93LR2Mjbyu0Pr2ym6oQwesM3WmlGpe/rnuW+96ajb9pyymiaxg0vIt7kkO2UMeF1KjtQf
 R+6Q/yCFZ9G9mMIZwAgFnGUVwnkf4xlWZ65r8z8BQEAAA==
X-Change-ID: 20260120-eliza-clocks-5ee7ec9d0e79
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2338;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=G/C8E6tnyrlc7aXmdiruS70Vl6WjWr9lu5dVB+apm5U=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkx7o23fPvCCd/ziw5IsX4TYPH0rSLlhUyXhd+
 pabptFqo9OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMe6AAKCRAbX0TJAJUV
 Vl7dD/9zgFF1bTT2xK/+bBhbjXJZVk88dmFEB80loFEV34ZYz5ibPUkAQFB1thrc2WTQ+Fpgfs8
 YRZnGHJKaxOLfCw0d9rFAcVaLxE1YhqNAM4jwRoUj6ptqcxLHYvGhdaH1KT1jtnp66m8HUEhnZY
 DygCcYTMQOM1RsEmqvkw9uq2a7YeOJ6x97JM/TO9U64+hpWmgJhq78k6EU0U5MRP5f769aUzdkq
 rzGFuStvFyszCsxtblwMkIMHogZ67ayA+tJdaJZBcfWPMDFKkEs6oQKMm9BcJdkB66uZAsfZaVL
 7K5ma6ZlblUFYV2bxMXCoYUGp5iV1Yqe33mZVE5CErVWEsd5+5SZNTQTkMzoJFY2h4hBs6ZmzCJ
 7pmUGc/ugQYohInEY+YmwtrEbAxUbO2OXJs/uZVTQBhGixuqChGGahS9EvysOH1E0onDHz3k5Fd
 fKBRfZrFOz/Susz8WfIwfxm5DAtvUxI3+OKe2TcvQ5Es49D4hloueYo8DCFbIjj8xyZUDOlEueH
 CxublY+ZqtuxmPZbimTUwioCPZswXwoYauDk9yrRDyz675tC2l0nTdMieoXLGdo7p+7jBMlVCYv
 GrYCCU4KgTd0izIl3Tv/1TSSjIAEbV/x3rGwRXF6FKDMKzUKYS1w9W4BAgVIv22SxqD78JKatQk
 O445vmRzUjd+8BQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: cYMjx3oaqivGcgWREezXb0muxOIP6k6p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDExNiBTYWx0ZWRfX+IGuBjAgPtxH
 jC3G1B/ngPNvG53yxS4jO2z2spKY+NzU7O/jTE5JAgUALSWIJby4rEpDXRh01AIWvQM4p/rLTYy
 8cANnYK3pyiHvA10a64G1nWVOTSaYM8dUzWTIosq0K6VNMoJCL7jyT81O4Z7AITcAfA43Hg8a7F
 Up5pbUIAXgeuzx9Mxkn6FQdD8WAYzLsxgr5AlOezUV76eera5RFR+tR/nFa+D94LhR3ZoFf3P88
 3eaRZWCSmkFz312ux0DVW42s2XnwmRIJNRQrzHAGxwmvL5y0Aws1T5KKMGQTK1PTb4oAAV0IfM6
 p1HnEImrarhTtbq2LAbnupvpDsJxBG0AFMG0DAnikXE0UYhGy28dKhUtxfkyz4lLo1i9OiYNFl1
 yChUR/8vZer8A39JxkHEd4+dTOOEp3SJ4R606Y9OyR8ppIo/C5r9EE8qO9rjNuK0Hc+pzU5kV/R
 3tIdEZHWOnJ9VIFLlEQ==
X-Authority-Analysis: v=2.4 cv=b7K/I9Gx c=1 sm=1 tr=0 ts=69931ef6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=RHXNpSf-syxuuu4qC9MA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: cYMjx3oaqivGcgWREezXb0muxOIP6k6p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265764-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,msgid.link:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C86A1144592
X-Rspamd-Action: no action

These are the bare minimum clock providers needed in order to
be able to boot to shell and have the rootfs on UFS.

The multimedia-specific clock providers will come later on.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v3:
- Rebased on next-20260213
- Picked ub Krzysztof's R-b tags for the TCSRCC and RPMHCC bindings
  patches.
- Picked up Dmitry's R-b tags for the GCC and RPMHCC drivers patches.
- Added missing TCSR PCIe1 and HDMI clocks, as reported by Konrad.
- Fixed the compatible order in GCC bindings patch.
- Link to v2: https://patch.msgid.link/20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com

Changes in v2:
- Rebased on next-20260126
- Replaced the all-caps SoC name everywhere
- Created separate patches for each clock controller
- Dropped unused header includes
- Added parents to all TCSR clocks
- Added an explanation to why the Milos GCC bindings schema was reused.
- Link to v1: https://patch.msgid.link/20260123-eliza-clocks-v1-0-664f1931f8c7@oss.qualcomm.com

---
Abel Vesa (1):
      clk: qcom: Add TCSR clock driver for Eliza

Taniya Das (5):
      dt-bindings: clock: qcom: document the Eliza Global Clock Controller
      dt-bindings: clock: qcom: Document the Eliza TCSR Clock Controller
      dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for Eliza
      clk: qcom: rpmh: Add support for Eliza rpmh clocks
      clk: qcom: Add support for Global clock controller on Eliza

 .../devicetree/bindings/clock/qcom,milos-gcc.yaml  |    9 +-
 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |    2 +
 drivers/clk/qcom/Kconfig                           |   17 +
 drivers/clk/qcom/Makefile                          |    2 +
 drivers/clk/qcom/clk-rpmh.c                        |   20 +
 drivers/clk/qcom/gcc-eliza.c                       | 3160 ++++++++++++++++++++
 drivers/clk/qcom/tcsrcc-eliza.c                    |  180 ++
 include/dt-bindings/clock/qcom,eliza-gcc.h         |  218 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h        |   15 +
 10 files changed, 3622 insertions(+), 2 deletions(-)
---
base-commit: 635c467cc14ebdffab3f77610217c1dacaf88e8c
change-id: 20260120-eliza-clocks-5ee7ec9d0e79

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


