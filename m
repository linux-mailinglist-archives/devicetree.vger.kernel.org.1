Return-Path: <devicetree+bounces-267421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDReAdtYnGkAEQQAu9opvQ
	(envelope-from <devicetree+bounces-267421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F41177171
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E7FBE304EF25
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B1F2517AA;
	Mon, 23 Feb 2026 13:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FKPEA8Fg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hcYZFp6j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65657248F66
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771853881; cv=none; b=CehP4WUxdC/9cQ4EkK3gp5upBAYrfC+Bsi9JGmd7KSwBlg1QiDRVOKy7oGLJSvLg98BPbjVhhGIefYi/IaIbiofhqQR2ZTF3hsyJjrKnZXKsNs3WtGKKcjrOfFH2quEdQdIwNEEf058Xrf92QBisbgvsVATTRRIRaRBCR6Wtad0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771853881; c=relaxed/simple;
	bh=PJKjL5w9GmkNdzF3k8paqIospNea5xR2VwPf/5AEtMw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IkdAze807cSG74C0ikMiG5dgH9GPPLUaerXatRJ5AW0p4t03LPF5MJcPqnPXqKZUHiPbf9w57Q62VldjR+fEZOcJc7UeS6uKRMXj76LFOhrdMeaPIzXCBRCBRbxnojZ9NaIl3MzPDipNlztWTfDt8x/sPBC4GW8VG0FMP6X5/vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FKPEA8Fg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hcYZFp6j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NC2qvF3152071
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:37:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8IEA0OJO03Pwu/2FEJJpmeYxqL+JqswxTgLe31jsxYM=; b=FKPEA8FgiRKeXm9J
	CxfKM9/iMzcE+Gk5wEvWu5Kn3jdWqUGr4q+mhSly82EPrBiUZLxmUAId5zieD0uS
	b/e3qKrZ7lX7XI5ePLkFOIyloPBK7ln4unmLKt5bHmraRfcAGEvRnLt+iaI/5zYb
	cKk6pcUAvtErYGISlTVYtEiim/TRnJQGZqxYraeoRaYMZU9wvyrgmLjSTfYdkzRx
	/R+xQOGvH+Pn3gsEn8ZkZw9rmVRVENB1Q0u0XrpcSDSyzYmAcD5lhOARsBPaRyOj
	nrJACCpNaM+0mIP4So7pfxAbupEy+KKuG6Yp3xsBfZpKCUV04i2M/vBn6pfbtjP8
	TobfjA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj887c7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:37:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3ff05c73so4283026785a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771853879; x=1772458679; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IEA0OJO03Pwu/2FEJJpmeYxqL+JqswxTgLe31jsxYM=;
        b=hcYZFp6jgQ6CFkcGfSFSbP5/74xO0u15+lhB3Q93PSfeJXRX4wXiksceDCCoGbELSs
         jYPWMtLcHxUWJUR+D5hBBcApoh53917DtVJwL4j86XIOaHOgF6CUoQupUD3JffzaFQ/L
         FWIxLV+pM3DhLKx5470Lt/gJFplWDdLdLpM1j3vM6mAJsOUal84nQO5DLCUOoYPuaH7K
         w+bB88zQvitYhIbR6z61Glbf8JBTWCUCaG0lbx3T7cIEEr8nhT1nhVVdQHdRm3GgObKf
         uuXjktOEqs8pDPO+41LtZysy4K6xq04xfemsAf4JKY7lTmSS7jvqyZfDvfnslGaxi+Ga
         vPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771853879; x=1772458679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8IEA0OJO03Pwu/2FEJJpmeYxqL+JqswxTgLe31jsxYM=;
        b=sl9VI4HsJjmPhii2tQ7c+A5OU+2TP2uodWIqkGEtuHU8y+B3r+thcPDbMLbSlNl5SL
         y0VKtYQVY6IjtexHoXgmARkVdqtFzG5SsrOa2JhMnqqXWHYV3YkWcYB+Zb+z2cuY2XEt
         LqqmFWT0Rz3ekXxH7KFRJ+6r20AXwtJxBXTE4kGvc+8Vg3FVr04uIcPxGmZxV7Y0X0oW
         ij0ImdVjQo+lzvxfn0wZajeyPh/o4vj0zUZRG7VdpXVYx8r//+8QUNHRzcJ7C/mozXqC
         aEs/8i0kKyy1AfGoIvGvuPe7kmc2EAxMUFCGudGomKaqwXqBbcgKyM7Fbw97X89blSq5
         n+LA==
X-Gm-Message-State: AOJu0Yw46trEST7YBvybfapkVPAvzZHPdklRy3K4QDegZG27URopoyS+
	sGleqFFoC62W9j1I2gUn4bJMJK3uibv4yUuhdH1N+ifiiwLy6BQx6+dv0ymOFmoErYSSOeept5p
	dgb7GVrHjas6peP/JJ0h8zgzy2o7zmM77YfGd8AhWCQriW+fvDEOC1At6juWzrFpH
X-Gm-Gg: AZuq6aLIdlrAdb49q0n+nS2tCijD/uF/jl8cQgLBlJ0B508kOz9xPx22k+BGrxGppx5
	IhDLA6hfN9qaxxgoUt3leR/8dhb4wn/oLUaaH2SXk0Km+ZQ22czaFGC6LftqeivGEbc3NCJ5B/0
	iqvYVHrSWeP4PNh32t9jf1980YpVfHBnZSNafE0CXTiafTp9bXDG7T7c/EOxVQK7GnN/MLRDPVI
	nz+pns+5SjKyu+pJswNqvgmi+2pzW2QTBYFz4lb4A5/mTrO8zRhYHgzAKEbJLzg/AyoeADen8Ky
	yJn5cFmn/CMWGpVKndc+PGEs5uhl1KWB1PgFYl0mdag2LCdkt2/+MnmZu2N1AcQPVL49uU/HIJS
	FF3NSOhZ4q7Ev+3/LeJu5eFW5IepsWxyeQ+cSWxcr8VH8T4jSE7g=
X-Received: by 2002:a05:620a:440f:b0:8a2:234a:17be with SMTP id af79cd13be357-8cb8c9d2b8amr976094785a.7.1771853878659;
        Mon, 23 Feb 2026 05:37:58 -0800 (PST)
X-Received: by 2002:a05:620a:440f:b0:8a2:234a:17be with SMTP id af79cd13be357-8cb8c9d2b8amr976091685a.7.1771853878214;
        Mon, 23 Feb 2026 05:37:58 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:3fa4:55d7:7aa4:50d6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a42ea5ccsm89398715e9.16.2026.02.23.05.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:37:56 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:37:22 +0100
Subject: [PATCH v2 7/9] soc: imx9: don't access of_root directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-soc-of-root-v2-7-b45da45903c8@oss.qualcomm.com>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1333;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=PJKjL5w9GmkNdzF3k8paqIospNea5xR2VwPf/5AEtMw=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpnFggsAfK2L599u52s0jxxDBJVDwECvhtJQ6BZ
 ShZXXzZl6aJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaZxYIAAKCRAFnS7L/zaE
 w9TLEACvx7EUOkNExR6rxJvbiPrwBxde+MzYk8WnOY0KUo2qQYe2IV3v4Y2OLkNQxLORHNTmTet
 tL8qdFdcA7/EtkfNAUf86JGuaHxQWgvPaQLo82VmtcJXrb3s4ChhMHQTxwSIzk57nVcuxBwXaoC
 d6cLiDC/nMwvrZAeyb+0Z1LBwzE7OMUXdzVztRyUlBioOA+aG7+h03mNocovFYbn8rvTos+rY0Y
 e7h5NIVlwUODtq0Ev51CGoFbC6CaCwiNXJba+UycfegX2W0Kkhwf0Zyi6DiT6gQq2D9oI1fRdMD
 xIzw0mWS+oLN1VnrqlYu5wL/Ku4iTSggD+ob4YpLXraU5R+wYi1r0Azeg8et0za9it4PFjFPnfh
 Dl7dYRS50ulZCrHTUPGGGGvZLPZT0QgfYfmQTBBovf+cs1qrWcAVJPUnA+5OIsPfTAX4tiEFRts
 P28q4vNQSZ0M8Ztild3VhrhzLubEMw6II5ymoX4cbhfI53GoFeJAcgxeL3sNXMCDZjbybvyP/7+
 P6DMYb8Zm0nYj6H3x+3/s8WEK2ZkHPtYYlR/xxt5DIZKaoXnhqi5T+1/EOjQ5KwLwJVLhLEEqcO
 /410xgEfAAQKBXmwObvlKe9pciFTnNXitRVoM55CA5VOT0ToZ4cE5MSg6+N9VqPGbRfWHk49buK
 slcXvQ/kjdLSnvA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfX6LE9Ja6NNTyh
 q1LOyQgkrUkIJFYCGchRh3xa0pQ64t4Y2H76uwDUT20bdETzGCB097r4t6N4ENkDEavHJkLQU5a
 ItGycZoLINzO7fdTHODg60+ZfWsBlug4n3oVK6xru2rAPNSXzBE8TVZt5cwrPtxKfuAuEdpfymk
 xTIK650NCQD+lAQloqGs4S72JigLKNo5Dtwifm2B33jDjYs857TLuSax2Lx24dSKF3VfmWz+KAm
 Z9G8qXvkwqPQ8DnO03g2YJ/IUIRCahhs2f4qYO8OEe6b5LNgUwXBnNdZCsoEhX8/4ocwGPlhvtK
 d3nXXs2r82BZVNZvmfZIHZ0PvL/Fb7HZFTa9AJzuNcMwsW8B9nXwFmCxZF8wyMKkxOyFUJNms7Z
 XgwVi8vDEYhgW3o7MLRtTRmfOVRzxBlbt+B68U7MFD8Xwh7GSXEpM2Y303pVLHjEqSLwkao2Yxq
 dXSBmzXHqnLtO1t7wvw==
X-Proofpoint-GUID: 6MDG0g_23D9FFpM94Bl2vJRM8pKn9Cuh
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699c5837 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=PMAhrox8fQbXPR-8CfIA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: 6MDG0g_23D9FFpM94Bl2vJRM8pKn9Cuh
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267421-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,i.mx:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,pengutronix.de,gmail.com,glider.be,sholland.org,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
X-Rspamd-Queue-Id: 22F41177171
X-Rspamd-Action: no action

Don't access of_root directly as it reduces the build test coverage for
this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
to retrieve the relevant information.

Suggested-by: Rob Herring <robh@kernel.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/soc/imx/soc-imx9.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/soc-imx9.c b/drivers/soc/imx/soc-imx9.c
index d67bc7402b10e2966ff77cbf3b15c087540bd377..58eef7d4f9089ae56891507e8dec383e69884ec5 100644
--- a/drivers/soc/imx/soc-imx9.c
+++ b/drivers/soc/imx/soc-imx9.c
@@ -30,7 +30,7 @@ static int imx9_soc_probe(struct platform_device *pdev)
 	if (!attr)
 		return -ENOMEM;
 
-	err = of_property_read_string(of_root, "model", &attr->machine);
+	err = soc_attr_read_machine(attr);
 	if (err)
 		return dev_err_probe(dev, err, "%s: missing model property\n", __func__);
 
@@ -89,7 +89,7 @@ static int __init imx9_soc_init(void)
 	struct platform_device *pdev;
 
 	/* No match means it is not an i.MX 9 series SoC, do nothing. */
-	if (!of_match_node(imx9_soc_match, of_root))
+	if (!of_machine_device_match(imx9_soc_match))
 		return 0;
 
 	ret = platform_driver_register(&imx9_soc_driver);

-- 
2.47.3


