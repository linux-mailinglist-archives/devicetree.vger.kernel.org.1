Return-Path: <devicetree+bounces-263777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBKMGGM5iWmW4gQAu9opvQ
	(envelope-from <devicetree+bounces-263777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 02:33:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3CE10AD8C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 02:33:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 675453006838
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 01:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 032492BEC5E;
	Mon,  9 Feb 2026 01:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sv39CkZH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NQNW7EfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB71D2737F2
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 01:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770600761; cv=none; b=HziYtkuTRP7lS2j/SaZchH7BQMHUXdLsbDSM3T2cC3F1Ue1ZI0csci9c+GG5uiKY+5aRJahNbz3lxvqdC09kP5cTQFDO/kPyHTyhgTwL3UBid6+EqlPluU9z1laSO1y34WmucJ+9vZFYuIrhyDbkWE7Br+0K3la1jfTNpVDAOx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770600761; c=relaxed/simple;
	bh=mp7znh5yUTXGIVAo3yop0t0MQrXUpW7C9vuYHOlkZ+4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D3WtzMjp7yH+zfPX8L7xP+exq7c9rDCQ5f1f+Dshqrp+kMP+ZOin73JOA0xaUb/4AG2qUaP6Wrvb7+UZALbyZkiI650C8dvLlzvKsunWug3StaDQTsgwtpmXhNfBoSBAoxtRZNMvTTiQYdBpqdi4ACb1RfxQ+EIlpmj0cZjSNLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sv39CkZH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NQNW7EfO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6187sr1l064637
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 01:32:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OLZC7NStGj9UHK+dN1GsxWqO1A6r1SVJAMjsxlitvPk=; b=Sv39CkZH3lvXKsSk
	OUj4hlTSGaMxV5UN92ZbLeadowgI/gkGaPvtBUnJMdb0OrTW6C226j4jXosbjCYy
	IxWdAyl4CeQx+l8HPxxeVU4tzvVFd6rWWJxX45ii4saJ8LxqBjC0y9fHnRHcRwQ2
	JIolkha8+OBohduHoa6v1UZjZcU+xxlawekWErX9vmAHPd+zITcYm22ymmyBgV72
	+i6di8IeYA1GFC/ndbE38I81l9dqjL0RSZRkConurzFXpJgRFV4HjDcjdKVGBW0J
	SC2P0JFUdNZd+i1SWbqSwn1nGTlX9ou46wU63Qns1aUNBUApuv6Dy8awTLcbXZGi
	vjwl2A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xj1b6wk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:32:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c881d0c617so677299785a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 17:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770600760; x=1771205560; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OLZC7NStGj9UHK+dN1GsxWqO1A6r1SVJAMjsxlitvPk=;
        b=NQNW7EfO6fW6n2DENZZ0cL5Dq6ZtEBB++R19pVKqNghAvpdNSNsTNsqAzS23xNkD8t
         1JGNv/6Yp/a2b6CktyryD+9yZlaLcWNMXblPngk/A8eEs6x9EO3FUrLd4OHwXgJ6uoTu
         uGwy+OEBnu1zE8hP9ob59af4R/fZzdJCLkS4SJK8HPBK7waSqeFjROs9eIhMuRcZZPki
         Epzmr9auVmCcvHzAGMDE61GJa4PrQA6fCR7e5KM1xYN7zVXp4NMIOhxtn/Uut2+nkfdl
         YtrNh5/HYTx8Wnsk8vVhM28nRHVGG5vIYjfmskSqIHgod+ARJ3fA3H+/3tOe7uvsUAt4
         K5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770600760; x=1771205560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OLZC7NStGj9UHK+dN1GsxWqO1A6r1SVJAMjsxlitvPk=;
        b=DKpZcG16bDyuDVQlGL2V14QZCeWBtTRPQ1EmKpSpsu1nsxC9fFc9fu2qEmrqlPqhK1
         PNGrtiTj6YSOd+ZAEY2DV9s0PSidIUHubbXO4kKgUzP74uD5OetcRwt+dG7nRgObyqjF
         juJUS67w2aWoOVgMOwbtXA6UHrNJgiLyjRHkWAgEMouE0fC7/cEQuQzFCqsGmp7GWEM3
         9+wwsvLY8UKBJybdEtga4NhqSbi1hf2PkIv4w2W5koYC5fcFoQxUedHl64d/sMFVQZVN
         rcHcPMOHKc+CKBiTPcou6/stUeM9ymFiGPPone99oHvozyK8VbFaXfQu0IeyFON5kGds
         2j0w==
X-Forwarded-Encrypted: i=1; AJvYcCXSsQ4HuMNn6sEJHk/7gSqys3NBIEQHHTsvf18PlMnBkx3Gkt4l/t5B2ZS7VDRVSI6a+TjDTkt7poWZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzJJyjG4HszbgMl9QmN63fml2gp1tKAdkDCEhKEA9aIeaaW0Hf+
	zT6ta+xefy9nKC6yXolRkyLmp/f6JMhMFnyZrvTOfeSlT3vrdtXp9WB1/XUa6E/yBTHXQqEKzB2
	buG6qGDE9kXbuyzc7ZQiADxhDArF1bUiq0YlaJmK9ZhAml7/umuyBpNitR6ACWo1u
X-Gm-Gg: AZuq6aKdbShnzv+pwwPe3aq1JnPNV8ycZyniVuJp1AABPuDJZAzaXKMQe0XHskGCnmR
	l45s/dzyhaVTx76bkgaxGHy5G3BZl2zSswG8Twta2SY471v1iA5dxD6TBADTBrx5eBsYL3etyaB
	lVXcBNVkxCoIzmBOLrEronN20JriY1Q8XMCdhBhTaCWwuN/oqwHpZoby/rXR7eOCOYPzoNdOhwp
	xhf6/27Czz9Zhdq0W9sHtokTQ4KUjqPzNl4r/pStyWU/FFVIEZH/m9fXJ8DzFouaFxN+gT+0Zhy
	lII1Cthojajf6yitWBB1ZRZgy/281uq9VJ8rofN5IkOLOUNVl2H3mDTxwZm4NL6sAzaTpPJJDbS
	x8tHWVdoQsDiszm3e4s/QNqV8pmEGi1Rgo8f0nGtUNcty8oPN8o8zH8TpOS0V4d4Jb10Tc7+84z
	afoI/LQuV41w9+o3WKsPORMZc=
X-Received: by 2002:a05:620a:d84:b0:8c9:737e:384f with SMTP id af79cd13be357-8caf16ec50bmr1247853185a.76.1770600760127;
        Sun, 08 Feb 2026 17:32:40 -0800 (PST)
X-Received: by 2002:a05:620a:d84:b0:8c9:737e:384f with SMTP id af79cd13be357-8caf16ec50bmr1247849685a.76.1770600759693;
        Sun, 08 Feb 2026 17:32:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b623668asm21688601fa.3.2026.02.08.17.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 17:32:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 09 Feb 2026 03:32:19 +0200
Subject: [PATCH v5 4/5] arm64: dts: qcom: sm8250: sort out Iris power
 domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-iris-venus-fix-sm8250-v5-4-0a22365d3585@oss.qualcomm.com>
References: <20260209-iris-venus-fix-sm8250-v5-0-0a22365d3585@oss.qualcomm.com>
In-Reply-To: <20260209-iris-venus-fix-sm8250-v5-0-0a22365d3585@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2348;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=mp7znh5yUTXGIVAo3yop0t0MQrXUpW7C9vuYHOlkZ+4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpiTkmrrMdMhMEbVQIM2UwZj92DyXcxp10jHwj6
 jLWEQRZZzKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYk5JgAKCRCLPIo+Aiko
 1RiAB/4qIi1i7I+vVAzoVhTQFOz0gVhc0D+EnKHisbvFDn3vTLE93OCIyy1sT+R3jpJT/I5FGyR
 aILzOSwDk7bmNV9iqh8Q046Yi1z5FwxGcE1PYC6ZclVsqzUkMjoP/PS5V/ZGPmA0M5e/To11NQ0
 iGrVdZ1Dx9B8vl0jVOL2MuGtNsblUbXKpwhpbDAx5b0Ia0jdOOUPWhJngOTxnsKEeRX+6XcBgXX
 fuHvmZ5ayuvKHqlSj/jC4SS7YYdPZMKzYqlSOmv5BXrK8rhzvFb/XKgKByn+55bRZOiKCYAXp6a
 Ucvx5TukvxnlZ0OimOI+itVCJgQ85l2t35XIHTDESkmypKLZ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: p86hR9HCz04oqbTH08WIlSgXk-8GVCAS
X-Proofpoint-ORIG-GUID: p86hR9HCz04oqbTH08WIlSgXk-8GVCAS
X-Authority-Analysis: v=2.4 cv=F/tat6hN c=1 sm=1 tr=0 ts=69893938 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=tBOqMctlXquWO7Kigf0A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAxMSBTYWx0ZWRfX+kKPKTwDFt8n
 kZianxZRFWauh/PJXqe5X2JM8y1t+7/OOpz0BTgX3mavBxCsfRjUPdwkcZ5PkIhGlwuIpSOvtBK
 t9JNhZAxA5Nkbayc2qpCgZ7CpjddzNmuHO6rBkUkmhg0MyC5OkT9QTru6DPROtWTmd81A9rKszQ
 /AHnVTalGQGXrNk42PQ9UnhHNG/qeGBYT4FtP4DGkyuvh6X/tolOODVFJ4HVtWm5vE702E96sEf
 H/LKGX4GEW26nWzqzc4nsZ+iTufNibCpo7PKW8tupSaVhd9BY3ApcCaYmXduL3rTZ6uoTULm0nx
 ungmlmLQyb26Oh5nDPPQVzObWIwpHgvSi7AxI5TxIPQ4QoGb/rYLcxGwNfk79mJPGtbMpx3AHKy
 oL99JKIokJu1Q2MHSGnXgBIfdbZHwl9MdAKdGjXJjl03aYqUBeu66IS8dGDk+FpSFWPfCP+H2mo
 p6ItqvKeN82zP4vPAnw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090011
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263777-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,aa00000:email,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C3CE10AD8C
X-Rspamd-Action: no action

On SM8250 Iris core requires two power rails to function, MX (for PLLs)
and MMCX (for everything else). The commit fa245b3f06cd ("arm64: dts:
qcom: sm8250: Add venus DT node") added only MX power rail, but,
strangely enough, using MMCX voltage levels.

Add MMCX domain together with the (more correct) MX OPP levels.

Fixes: fa245b3f06cd ("arm64: dts: qcom: sm8250: Add venus DT node")
Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index c7dffa440074..a1ab8c3c27e6 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4321,8 +4321,12 @@ venus: video-codec@aa00000 {
 			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&videocc MVS0C_GDSC>,
 					<&videocc MVS0_GDSC>,
-					<&rpmhpd RPMHPD_MX>;
-			power-domain-names = "venus", "vcodec0", "mx";
+					<&rpmhpd RPMHPD_MX>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx",
+					     "mmcx";
 			operating-points-v2 = <&venus_opp_table>;
 
 			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
@@ -4348,22 +4352,26 @@ venus_opp_table: opp-table {
 
 				opp-720000000 {
 					opp-hz = /bits/ 64 <720000000>;
-					required-opps = <&rpmhpd_opp_low_svs>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_low_svs>;
 				};
 
 				opp-1014000000 {
 					opp-hz = /bits/ 64 <1014000000>;
-					required-opps = <&rpmhpd_opp_svs>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
 				};
 
 				opp-1098000000 {
 					opp-hz = /bits/ 64 <1098000000>;
-					required-opps = <&rpmhpd_opp_svs_l1>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
 				};
 
 				opp-1332000000 {
 					opp-hz = /bits/ 64 <1332000000>;
-					required-opps = <&rpmhpd_opp_nom>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_nom>;
 				};
 			};
 		};

-- 
2.47.3


