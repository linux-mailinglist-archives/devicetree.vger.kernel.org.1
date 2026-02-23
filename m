Return-Path: <devicetree+bounces-267420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNuKN79YnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 994C917713C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 147A43058EF1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040B4246BC5;
	Mon, 23 Feb 2026 13:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Im1mI+xx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L0AP8Fds"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17BB22D4C3
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771853879; cv=none; b=SDPcWzU0UPcWmT5RC3+aUcvcY4nj5Cr6m+c5V2KAlhtWvkiUjvEqjP8q3rUwQnJ8WC9A4FKlEBgXfINWYkX4nIUAiDCoy1xQBwZF3wvbhf+GnZmj1/Fxgfzc2Yr+wVQvQ3uSRHWPAXRT/QgDaLnZVTLkQWvNDsqEvz/bM0mJUz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771853879; c=relaxed/simple;
	bh=Y6cLnzxLbcY4O1vy1l/Pb+kY447eHyffEqOzNMSh1VA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gNmuehVcvbxS6lrosMKdP85yLutp8Vf0f7uv+Nlt4Yac6tanPFrTBiSdLNzCTDGY6YeyVEUGsKvyVyUGjRWLQMAJ5ijpw5NXAIYrp/XqYidz1Cqm12yUwEW5cRXhSQNiTKgF5kSvUQ7fcZNgkjQWJWJFIQDNLuR0UShJHQ/T0xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Im1mI+xx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L0AP8Fds; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NC2iVp3151827
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:37:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hX2z1Mn1lNB1TuzKA7m+Z2aNKcAg/qPq95Cp0Br+6Qw=; b=Im1mI+xxY5Dok5Lg
	jCoPoGNfoc3/riz6XIJOoozon7D78y3Q3OFgonQcOc52ns4mEYU7c43JhwfxyFt+
	LMAi5aU8XqKO9+oiUm7cHxj0z+9aqxpF8/SOHBrcmY3XH2SttIry5fxi4xT0eUKv
	yhoRZZ9an8P5paLgGSkYSZgsL5Z1/zVVvnh4UUBz4j2YNuFAUrGvs2JJqrnT/WmA
	U8JTC1G+3L8k9hUrOXgisG4JWGxBzSveSc+l4wtOvR5Fngui+ke5gAzpByutxc2q
	8Lo9DSuPx72pFAjcCWe8Q09WK4FO9o/9nkjHnFNmFpEWUaRxo/UNcxrVwEBAl4w1
	+ShE9Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj887bw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:37:57 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3a129cd2so5688212485a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771853876; x=1772458676; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hX2z1Mn1lNB1TuzKA7m+Z2aNKcAg/qPq95Cp0Br+6Qw=;
        b=L0AP8FdsohFRj2HSSt/u9jTw0o8gFMnQ3LD2Oy4VtuNtJCIMe3Xcv2TB2LbAB4YVGn
         qAjkr66F2Sg3PfMuSeCB1vOCvKPdtnOYR03MXRr4ayhHGL+huhdKoyrzRV7rjohK4Ftr
         fOQOenHpqRzPd8S53RJ1LihKmvoScSrF+7RRufk2JRo3277tRYbRJcRf0domT3292gjJ
         fXJcT66LfLp4xoZFAQEi7/cjfZVZICbpbilhYA68hE0aiybq9hr7fZBZaC9ptyD5gOlG
         cI0aBRK1vYDwjlNjjRoh5odMcyy4mvN/vCDAl19g98X9HB2YO0TBivwByKOg3f5hQEmk
         /WoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771853876; x=1772458676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hX2z1Mn1lNB1TuzKA7m+Z2aNKcAg/qPq95Cp0Br+6Qw=;
        b=BQxmKEbsI17RaFIov61sl8cmo+zPHjX+uF3dfUV74sMO9DunWROcttUpRbDy+nrrHm
         7LDW2OFUOhTdxEDZuxrOUWmvkHXk/VgYscBiXE+jh5KAgCZTvNamkx4Ook9xO/h18fcb
         1+L2wiwLshcPAsl6RPodL4RXRArhuHRyXJqpNf7lou+yCT/UsU1AGZjMKScVHPK/hw2x
         jZ0tqOrJzhDvkJrSo2vCWr1GCX9YmU7avZiXx8tKBxSY5Jqglz307DDgea6haxo36dTn
         C3Z1syYmxaSn0hG1ck4OsSMOeQbH/Oqk9mEZHWqdxE5Ub6e5X23z6v4Gs+5wJfevCvn2
         2xWQ==
X-Gm-Message-State: AOJu0YxxiIWPwgvl+oyuFtAjJ+sPCEnaX9lN+iVPASLmj8GzNns5DjBq
	UN1bVImXy/K39ZreW3GKzVwtqP650rJieUFKBMfftq80Qp1KRzvlCPOoxdo5TPTzOgNvVlkqfId
	b4JNpwtr++a7iNXTLaO4CnVJW6cYUGXs5tHkMgLnJpkxxHPfLMvKtv3ruSffr/wVO
X-Gm-Gg: AZuq6aJf90gCemIpyv9w1FNFQtmEWVUuGlS7XuHbtwBomPXJF7JUqNe4ELfXz8RNQ+K
	KiY1gJ57XoiPva5MxCH/42hBDVjDZfkKzYHAu/yurvMiNq/CuUIlF973dwWTKdTRSEZGuHCvIzx
	6d+hQ87TA+mh7713xc4pI9aTLX8cuLPERChg5OpDuqnLTJHxR8OSRsxIZWH7QtAH6AJBqk756Ca
	6ivKUhfhGFoPnlRgu6TD9Zk2OONDofy3D5R95XluIUP9KjoEj2xWH/W0TURruM8zmS3r0sC740A
	1ZFUKaILH7dc9WaiqGsbShd6rdGd3KUQ0DZ8m+OngZkj/0H6ou2iiH2/3c+x3YImk8BJBood25I
	XWbk6JOtPOzkXewRbTZAl6fZsUqzVXNYWCdzKRVn3oB8ZyV0Q/bg=
X-Received: by 2002:a05:620a:4809:b0:8c7:e8c1:ea05 with SMTP id af79cd13be357-8cb7be3b578mr1561789885a.7.1771853876008;
        Mon, 23 Feb 2026 05:37:56 -0800 (PST)
X-Received: by 2002:a05:620a:4809:b0:8c7:e8c1:ea05 with SMTP id af79cd13be357-8cb7be3b578mr1561785285a.7.1771853875469;
        Mon, 23 Feb 2026 05:37:55 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:3fa4:55d7:7aa4:50d6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a42ea5ccsm89398715e9.16.2026.02.23.05.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:37:54 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:37:21 +0100
Subject: [PATCH v2 6/9] soc: imx8m: don't access of_root directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-soc-of-root-v2-6-b45da45903c8@oss.qualcomm.com>
References: <20260223-soc-of-root-v2-0-b45da45903c8@oss.qualcomm.com>
In-Reply-To: <20260223-soc-of-root-v2-0-b45da45903c8@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>, Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, driver-core@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1810;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Y6cLnzxLbcY4O1vy1l/Pb+kY447eHyffEqOzNMSh1VA=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpnFgfyiEhvnOTuwabLoouq5gojp7xTfxsNoS9b
 r4S0IUnXVWJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaZxYHwAKCRAFnS7L/zaE
 w/7zD/90hs0mBgYKZcCh91ZyjTCM43x7ieC4F8bbuC/Z9ltgbbCOKLPt8RJvDtLoPCNCggR4EIs
 UZBmQG7mBKXwLosmLYnPrDP9WfPHD5FclsLeqz8Rhgt7zH+dNSz+6xTtKUNIix6ApcaYzXhq/1P
 2zQdSCpdD1rFaU9VmyfHgIjYdNwBKyVd5Htftn6rRnB8FS6JEokeNC5zVnEnm5A7bS2ilkhnJqn
 cqu5BLRwPq6G4reXHnL8XidN1j++El+uHP67EnZKbGR7OOisUCDQhmWbi8lNS//6MzjGnYb9NLu
 wFrLKYN9Ssfw3wTW4VNqE96aYE55vjMaKUAbkb8Z6kc8fCaGe/TtD7kuYaq5OxCvAvFuXK0Veye
 YbqPztVg/oVDFAJ9cKhTjY/cudGxJOEQTv4a8rzf81gi6QqGNWMFVspOfQZT+P1JsszrMwRP38W
 FZdfsk17TXfvet18kfZTFUhwTNPrHDVdnAa48bc60X+dgcolYfTF0NzZIuQLUDk6a6k2wKl5iY7
 Xbq0cA4kvkV/YF1Lrld+ZFyLm3BdSH2DERrUJzHxU7i6chgTZ2JiAQ6bKxYbejIM+MSaJXSXTlF
 Tu+EZ10ygw4wuVz5pazqWqyZH9dzg02jF2eFjraffWWO0iMiaQdyaTXAVJTapE6rjmTGrOvy98k
 dGFX1GlgUYFZo3A==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfX5My9vd9gmdFn
 DTEHx6gA+rb5qbxWbd/jm4sUy3+io7KSvBHwt0oRnK4MdncvcaZ/Bl9MgogOc8/36slv9mHOWkT
 wFgXlyKbJk5WQbJLb39En3Hlio4fs4WM9oyfucrywVCqfAshcf1hFl5bZkxbpaI4mophwXlLcAu
 QSVOifkmP1YsXAQJYXdbieQVvEUTCUMQKwEZRR5rghDZNyfUyswuyXj2t8GouGj+Wr0pg8LoQxE
 4m0G3vr62q5FTGNsS1yfXfFBFXW10tF1A8pp2jaGiqzqmUkT+s1MwPyGQIZr7tpVTaaUCLD2AH+
 whSmefbJUiBcIXymp2xAePvbD+x9PwnRsgsbQI7c9/FcHV1mhv+lq21mUkgn41TsLjrgF6Zbapu
 vRlucZmuWKWKvO4iBJSiUbcWS62tKY0knlMMNHVUK0hHzVVlmDpKgSu981OCK8o70mIHhTIERD6
 Xhqy012ZsA4uunb4xag==
X-Proofpoint-GUID: 5TheA7QtCy7FElpz6jfF3uD6AmnLLTt0
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699c5835 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=755HHWBoX-NvMu0yvfMA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 5TheA7QtCy7FElpz6jfF3uD6AmnLLTt0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267420-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,pengutronix.de,gmail.com,glider.be,sholland.org,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 994C917713C
X-Rspamd-Action: no action

Don't access of_root directly as it reduces the build test coverage for
this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
to retrieve the relevant information.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/soc/imx/soc-imx8m.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 8e2322999f0996d2723768469c6893b0ea22eb9d..77763a107edbd11302017e3f61ecb4369fda1ab0 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -226,7 +226,6 @@ static int imx8m_soc_probe(struct platform_device *pdev)
 	const struct imx8_soc_data *data;
 	struct imx8_soc_drvdata *drvdata;
 	struct device *dev = &pdev->dev;
-	const struct of_device_id *id;
 	struct soc_device *soc_dev;
 	u32 soc_rev = 0;
 	u64 soc_uid[2] = {0, 0};
@@ -244,15 +243,11 @@ static int imx8m_soc_probe(struct platform_device *pdev)
 
 	soc_dev_attr->family = "Freescale i.MX";
 
-	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
+	ret = soc_attr_read_machine(soc_dev_attr);
 	if (ret)
 		return ret;
 
-	id = of_match_node(imx8_soc_match, of_root);
-	if (!id)
-		return -ENODEV;
-
-	data = id->data;
+	data = device_get_match_data(dev);
 	if (data) {
 		soc_dev_attr->soc_id = data->name;
 		ret = imx8m_soc_prepare(pdev, data->ocotp_compatible);
@@ -326,7 +321,7 @@ static int __init imx8_soc_init(void)
 	int ret;
 
 	/* No match means this is non-i.MX8M hardware, do nothing. */
-	if (!of_match_node(imx8_soc_match, of_root))
+	if (!of_machine_device_match(imx8_soc_match))
 		return 0;
 
 	ret = platform_driver_register(&imx8m_soc_driver);

-- 
2.47.3


