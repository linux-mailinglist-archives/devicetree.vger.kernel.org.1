Return-Path: <devicetree+bounces-274654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJBgA03bsmmCQQAAu9opvQ
	(envelope-from <devicetree+bounces-274654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:27:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC0E2746A5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A68813068924
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120E23C9EC1;
	Thu, 12 Mar 2026 15:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gSJfS3z1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EYqokVt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8940A3C8723
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328476; cv=none; b=DyQj7Jh6ylswyXDNKbY5cirvJHRRYWSkUlmDjRUcJu+BHoZ3DCoNh55qcIaCc8IR6OA3kaTZzFQlPYEGbNLlPrkNcRxbry4Jyg55Hltlodr0i2H+QL2w6MFw+uOGa9HwwmnJczo7/iDVRNjQISBdktTeYbjTbL77uITcCNigwM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328476; c=relaxed/simple;
	bh=Swbs7XO5sQKOErneWVOVJFU1dqwYu2TZtbrUnvr0Jbo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n994JBdbJRRkVdPZqKCP64Mmh2/HyHnfvkKnNKMIanP1Xmppem8xywuZaDcfJjPA3oDednb+/PVbeXTv0XVP8P8i2PJnku2CnBowpiXWlk6Ar8jlQfAU9+MrqbrJhzNlTEBhiVvvVmgqyGN2YGEvgSQOd3+QFSLCOYf1wqfwtX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gSJfS3z1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EYqokVt8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9Xq8n2777759
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s9wtogtLTVQ+JC6+U/vhw/2QiP0OXfBjiSPwSkvqrpE=; b=gSJfS3z14C3MSbp4
	LZ46X2YwZ5S403gqWL9oosxdwCxKmClm2+f+hxU3xLvMr2XG6l4al0wyI2VR5H7K
	r3Y1aO2SVhnTZ9XEG58c2EC2ewc/ECU5MiW9IQLPtVNqiQ7gb4qFGR/+iPK0LXDn
	rXlxok8M7pFXBxSD2bMnH1k99k6dccAuVrtf1DEhm3ibdwgiTzZF/JSxChZzMgmu
	MefICBHiebWixAO2pSgE0xWjjwqHjkmu076qyFlIuYwfsWEQMjP7Qrll8LdQ+Ygx
	4I8wZ5Bo+El2aNqSfD/2BoB9HrrGmHvQ6Dw7MS2pYRaJRxutnc0ZQkqBOC4NnhgM
	3QtZFg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvq9x70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7d4cc049so1267026785a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328472; x=1773933272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s9wtogtLTVQ+JC6+U/vhw/2QiP0OXfBjiSPwSkvqrpE=;
        b=EYqokVt8j0P5HeSDU86FNmHFBMcW8RmGWemPSr3X5Af8tAhti6xk0/V92ZBExucDB4
         zahcQf2Q7mhdzHrio4hDo2JkFn404hvirmfXCQRQ7C7ZdxQ0SbrRPMPx5G3pNoGpXRGm
         8RTSE6NA0h2K22eLsPdc+sLFDkPQHxA3QTvI3TGo9hFK+E0SSvlwe0q581nR+orgypSk
         8eT2GlubVnhr9KHHWzAXACXax8i0PPpDZKxeV4isymSLA3D2b3zNShq0dlT0vraH+mkr
         zwsvfS+pG6gnAzs62UjWC5rZMBSaONEzxONQGK9X5pxuUvw0kwi2qwtey2/FwJQWqheh
         xW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328472; x=1773933272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s9wtogtLTVQ+JC6+U/vhw/2QiP0OXfBjiSPwSkvqrpE=;
        b=QKFBn3mjlV7Ql65TN48MKllacszsE9ashxwDJzDbIcnFb/X4Zi7I3Rl81thQ+1dX86
         6GcHJvfmM+vJQbro0f1E1fwK7xpyXkTeKTwK453jx4A58ZYv8EKeW4+mBH/b737YSSg2
         O09Tx7KvOBKapI2FFSDeEnIa+HizV3P/DpXQUtl2P5L8nK4tY2Xzby9F4iX9wu6z8PPv
         xExVXDscCgP+UYo/w6vh2x9uOr9r8XKpXtwrjgFwbYuJov5HXNYsBcIqoEYTyIr58aFl
         +NS43kNf81gdeVs2kabGfDtZQiB9gLUnr6Q/dy78uQkptSuf6JFCjFghowUOk06Pfd3I
         hQxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrFro9N0r2PQ2B1Kbhe2u8GBDAzrBu10bff+4QnQLRC07eb/XB3ga8eaGp/u8JNBaa4vwyiVHyYqIl@vger.kernel.org
X-Gm-Message-State: AOJu0YzemBDnrLc7uHpVK5NI/b7U+6jB8uyTEH+pk5gkYBg6csIiHp0B
	7h+mALh3ea9HktYSlbCaoYs4MDasHBb7OXoSp/vP5o59vdBUVlEtStMkHkNqPX5Xpm0WHxrjRGM
	7HEysNZ28znyAsFPbxGp+IwpT2FNr4W7qqyLjsYCY9DOmcAriB7BUOnLXwiK0B7Qy
X-Gm-Gg: ATEYQzw4U8vDgcbSdMv4by3m8fImtv6TBK29dKH21Qt6ongD1HgP2wWFtkGvhMCjdm4
	C2NViNwv1MzkQsD+nO/hTgIvGFt70YPD5GwrMW0aTXPG+xbHUBRS2lQwhwMEUzXGL8f3uZY6gyD
	m0gKdo8SwLs0ay59sWPapoUcrzHWI1smeXMoUlwsk8FBoElz3pS4uruBupAk4OMaJBgsoUmQxTR
	BgCkc8z0RByrqeo8fbNQ0JB3pZHjzyf2OqD6sQUulLf1j+owgP9lIcAw7DpwsV5Ow5agyLO9nbO
	OBXxia052SGcnqanZvvdQIhj2ndfMvPTVn08WBcLAAm0aMAE++pH5TLw6Z0kdDZRkWpks84dsoi
	35qJHNGFTfIczJx1+UNrvLI7b/NQs9BbVX3EsZqjFZv/ajpcqzvmtTHC3hcLka5x/9MOzCZga5C
	MEBh7MiafKl5J2uKg8K/d/OsfvptI/8iU0qLo=
X-Received: by 2002:a05:620a:40c7:b0:8c7:1986:6b3e with SMTP id af79cd13be357-8cdb5a9e986mr9848885a.32.1773328472468;
        Thu, 12 Mar 2026 08:14:32 -0700 (PDT)
X-Received: by 2002:a05:620a:40c7:b0:8c7:1986:6b3e with SMTP id af79cd13be357-8cdb5a9e986mr9842785a.32.1773328471822;
        Thu, 12 Mar 2026 08:14:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm972822e87.61.2026.03.12.08.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:14:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:14:24 +0200
Subject: [PATCH v4 3/6] arm64: dts: qcom: sc8280xp: Add Iris core
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-iris-sc8280xp-v4-3-a047ef1e3c7d@oss.qualcomm.com>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
In-Reply-To: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4694;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZvJMG8Z3WvBz05XHBSniabOrPMA7K0JLnPM7q5XpTGI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpsthQsBU9FyJ7DJq7CVgXLD8MjKKlXPb8BExBn
 OySTGKTA/qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabLYUAAKCRCLPIo+Aiko
 1dHmB/wJAdM0B/p38JrfMglXwkVQtkmyBhIlCm4Ufv4UaYpByUFhBhT8y2bGsx3XVsrzGNqK9YI
 12YjVKm2aAeSH0iPN/vug1/1l/aTAW6eL1RWIWyjoY5+6e8AvQ46WdiqEakvbA9WnpdJaSyHfYS
 n4e+aeklAv+MvdqMcT8410ZDY133hZOlWyJe0Ljz8IK5lQsZeuz1e/a6Z/tuu2UguyVBFxYTZmf
 qdnMzBtVN4/vBfvc1UyDeudzsB+ZnvMzhFb0PE9AZcbiNbWAnOaVLrI6mcFUKnwnq7L7QJBkJff
 46LRW94uDNfPwXgWNw2FEGfzNIZQ8fFYSNseF3aX000l6zk+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: uZNbyDmaVStVb2zMXaXQr3JFbxHcx4ve
X-Proofpoint-GUID: uZNbyDmaVStVb2zMXaXQr3JFbxHcx4ve
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfX0sKNkpBK6EDe
 xYbCZnIS9vtGcZdwf5xJRlLlTR0tGzz9dSaSDBQ0aus0E/hCl50KlBwU9im7rxd/bJ4f28qeGtb
 D66V01F2kCZ85orQgBCmezjc9spPBnnk4fdZveY51ah+GvI2R0ODgPGaIsB5RuEin+Phmknw6Dt
 cY6BbQWyoZgAZgMZaejAnS5WLZ4TCoC+F07U673ZnJxWoh/cynHFEr8pq8KCclJOhlYcdBI5jt5
 5KBlEp51ozrpqolAiKu9oxAgaC6yNyRuzDazQBWybc3TD0H40JRB179/0t3tanLcjx4VHV/GaQg
 74zsz7zu0GadjB2ugpQ0FfkVIVHly4aBb6Ko0JfYkzLmJpt+7YK7mVChOfmIGw2/t4/YNAuUVTc
 tODzKw1D+BJ4AMbmpyPoT1nYa0kAJmjm6boLoszhWRAr6j8cHVifVKHAymoJjJ/MG76Ir2g4CGc
 WCnlGcr+yN2xKdJYozw==
X-Authority-Analysis: v=2.4 cv=ccHfb3DM c=1 sm=1 tr=0 ts=69b2d859 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Z5etVbCIt5GNeBr577cA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120121
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274654-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[85b00000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,86c00000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DC0E2746A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Konrad Dybcio <konradybcio@kernel.org>

Add the required nodes to enable Iris core on SC8280XP.

[ bod: added interconnect tags ]

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
[ johan: use sm8350 videocc defines ]
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped video encoder/decoder declarations ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
[ db: dropped llcc icc, switched to sc8280xp compat, corrected OPP table ]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 99 ++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 41c57e7dc433..d950816a9a9e 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -10,13 +10,16 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,sm8350-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/reset/qcom,sm8350-videocc.h>
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
@@ -691,6 +694,11 @@ reserved-region@85b00000 {
 			no-map;
 		};
 
+		pil_video_mem: pil_video_region@86700000 {
+			reg = <0 0x86700000 0 0x500000>;
+			no-map;
+		};
+
 		pil_adsp_mem: adsp-region@86c00000 {
 			reg = <0 0x86c00000 0 0x2000000>;
 			no-map;
@@ -4181,6 +4189,97 @@ usb_1_dwc3_ss: endpoint {
 			};
 		};
 
+		iris: video-codec@aa00000 {
+			compatible = "qcom,sc8280xp-iris", "qcom,sm8250-venus";
+			reg = <0x0 0x0aa00000 0x0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd SC8280XP_MX>,
+					<&rpmhpd SC8280XP_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx",
+					     "mmcx";
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
+			reset-names = "bus", "core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			operating-points-v2 = <&iris_opp_table>;
+			iommus = <&apps_smmu 0x2a00 0x400>;
+			memory-region = <&pil_video_mem>;
+
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-366000000 {
+					opp-hz = /bits/ 64 <366000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_nom>;
+				};
+
+				opp-533000000 {
+					opp-hz = /bits/ 64 <533000000>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_turbo>;
+				};
+
+				opp-560000000 {
+					opp-hz = /bits/ 64 <560000000>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_turbo_l1>;
+				};
+			};
+		};
+
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sc8280xp-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		cci0: cci@ac4a000 {
 			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac4a000 0 0x1000>;

-- 
2.47.3


