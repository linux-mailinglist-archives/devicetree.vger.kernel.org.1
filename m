Return-Path: <devicetree+bounces-270479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOJCFmTdpmkEYAAAu9opvQ
	(envelope-from <devicetree+bounces-270479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:08:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C77D01EFEA2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 84BCF308DCDA
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E710423A67;
	Tue,  3 Mar 2026 13:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N58YvqwG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V3sD0Joq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030E2342C93
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543297; cv=none; b=sw3Q/6xfaFnVmh/hJEJV0luY6+/Hy1+Sbz6rccv+AqlYehyxDQE5iUUx8SW26km40mJlIcIsJnfu73k+aoPPIByA+9eHKNgrCXgTilK3ubHF6qYopkpfcsuvn1hmCAib48GM7qCBqghW5t6XCpbDfixBb0uOq40NGIpPRmtZtt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543297; c=relaxed/simple;
	bh=29zuWhSdKPMixfedFLH1EPTW4fPqordVY2iglKGMw2E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pYqSgsfvcbrN3L1xVMDuER8zB5gzmorGtWuEiWcYUHm538uMrtHnnzhBAoHLgGMoMfT19lbnMsXDzgJEvCeypg2sduX6XLNq8ALmFfx8ETF9ONDVYBgl+8OP62ep27HQ269yEF4+65vrFUz3AOnaztB2vLASDVjwD0GpheSdwXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N58YvqwG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V3sD0Joq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n8332630031
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:08:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3J0UpBFWUdNX9Om+xi+7i6jgyBAiM0Mmaet3+Qk3RNE=; b=N58YvqwGvg6C2cED
	HuE6QOiEOgy+xUMOXfRdT4WU34Nt5GlRr86dy5cy3Tsa1ShiNEFDrhUmI6gIAbVi
	AogQHcwHnXpGlZjVcI+2dDcXxis9mWhkiacZCcGxo5bo8twbOWwhV2ZOz6PmP9T3
	w0h7J3niMDDV6QiGubd+2ipfGfeDTkA8DDdiYMvWIbb/HVpdCB+BB08i2aVMsVDb
	cut8plcZSFbOreHxDdXvlIW1Kgfv51d2Ur7Ng7/xJkVLV/GDmjA4Vi0kcik0vxbS
	9u+9ygfPJ847BaPYo2BmesW6O/HIRyVIcsijbRWUrQt3YWJ5Ws9wqnTm3glW2MUN
	O9/Nqg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhx5avxg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:08:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3b0d938dso4362800185a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772543294; x=1773148094; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3J0UpBFWUdNX9Om+xi+7i6jgyBAiM0Mmaet3+Qk3RNE=;
        b=V3sD0JoqCP7khaoo+Ilkn3HhoYmK4VxL1deXzXGGolgzqC3uH9MK3ByASF20i+t+Y1
         szJvoQeJdX8bGId9uH53MTeUjJy66wx/CEdKnyPAYoe+VskctT+bGA3ZllRl7/N3y7ov
         GVBdFnxcgvWOO0BUu8v02FUzgMmkeUXYzGpOW7t5FAJJ12nJtfsFzutlsQPg1AXwV7Z4
         FXh9VnM7yqHUmutYsoAZInxkF9HB20BVjkd56c5NwXnmfDtmJ1d2Y1omSNGxaUFpu2Sa
         pCceS4SVVJ6U1a6yVmg7+v5tr6KUfJrXT+fCrVsDbtrYPW4vn5gfnxoAQWJaYXi2um8A
         jtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543294; x=1773148094;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3J0UpBFWUdNX9Om+xi+7i6jgyBAiM0Mmaet3+Qk3RNE=;
        b=lwMAsJUmqnoZCrvlTDn3B0qPS79PMeBBWNvg+3xE4M3s4hIc/o0pFAarBflQyzopfA
         DiA991DQmvZ1mT5DqGW3VtoRIoetHK7iqcGK65ebj5YgP9/WeU1bnHAXRv9zwCewQW3o
         P6stmn1Js+xi8wSGuRzDLNB6/TWdmJekx997OIA+W3Dfg6gxhUvlo5btn1JQxhbgCXJo
         aEZeRTmIUplX49mL3C2seE4/Hew6M5JKp4nvMehgVeItaenmnCqcGnmiihR5SriDmXbU
         hZO2obK9VFZ8PiiYKDRICu31FmDMxD9ksvOOFuse/sDpmJX5ao01KCmwlFdw1PxVS4r7
         0G3A==
X-Forwarded-Encrypted: i=1; AJvYcCV6sjeMeYpa75KtnjhVSsYcgvC8/7RaoTv2qnApnkoroLzQND6bNQbqpEq0K2YNYE7vIgS2UB48pyrM@vger.kernel.org
X-Gm-Message-State: AOJu0YweCTUUZL/XVGUEDxve/T8pxclrK9ofeMLt8h8et/GAEZ2GQJhu
	EfWt6FcmeTZsiyAejAfOh9znGfx+eN9klUyb/ktAaBXvVGzgHlHyteoT/4LzYNbxbXPXyDkvhiF
	taf6gagsj8mNxtAPMIJNPNE0HmHU/5krxn/tb922xeK2GufpBBT5VglrkaFtUllao
X-Gm-Gg: ATEYQzxyrOuvxZ6UC7KC9WU16JynlnNLbdIexFpjhr1Dfzoj6zSv2Ud6ZhBjgY6NOzp
	KtgkHVlgJVq2pdTZu+8ymQGviRD70mEL2u1KXAku+WUe4uUmvLB4E+XNeLCkcrpR1iYv3eIn+7t
	3GWBX3Ag5Xw6KPixmBWlNh2zL8adveAAXg1f8GIB2UFGLxoq4mfu/8bU7j1ENhoekihOe8tMWbr
	4L5hG4l2QmhobobHxmHncTRZH1j36QDaPfuzmsE5MhlIHO2JpnQGdYfgLoqSkQZlkc8HcohS8oQ
	ODS3n9oFZ7XxUNKupTYbX19AqbkxrIJM5d5HPagry/HBZTV57KO7mIilwupYL4mQHaBQ8ML5erS
	s4z7bL8YJdqvPtQmn4VJXU1+3KhtXvHHwvYen6gp+jT2R
X-Received: by 2002:a05:620a:2892:b0:8cb:31d8:43a1 with SMTP id af79cd13be357-8cbc8e556fbmr2010944485a.11.1772543294341;
        Tue, 03 Mar 2026 05:08:14 -0800 (PST)
X-Received: by 2002:a05:620a:2892:b0:8cb:31d8:43a1 with SMTP id af79cd13be357-8cbc8e556fbmr2010940585a.11.1772543293917;
        Tue, 03 Mar 2026 05:08:13 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126563ddsm26253495e9.3.2026.03.03.05.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:08:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 14:07:52 +0100
Subject: [PATCH 2/8] dt-bindings: display/msm: dsi-phy-7nm: Add Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-drm-display-eliza-v1-2-814121dbb2bf@oss.qualcomm.com>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
In-Reply-To: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1058;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=29zuWhSdKPMixfedFLH1EPTW4fPqordVY2iglKGMw2E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBppt0sXVNpJTnshGDMF0rAAssEPGRxS8AaqwoaY
 /aBmhwFcheJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaabdLAAKCRDBN2bmhouD
 15UtD/9eh939/lVG+ZgxCCxkznIRgc63wuA3ndNre37KbemBOq9sG/b9bddx0k/lTn9zcWlBtHa
 8feLEH26lzRTRM1pWXIAmQtb1SYAV2+prpDfZtTBzaUxXZv8YbM5JaHZrPgoUyVApTpN7f0+Sl6
 6JfcMlCagrbr9UkKiTwFJnEKVjjSYndql54Jjx54vr6CSnc/yhfFIq9UHtv641goeFHNnCjXNJ5
 IcgbGvwx0/+bM1v5ax9vcrwGXtcDofK6W3fldm487P9Grjvr18H1dV4UDzg+iKUJBY1SXVkZd/d
 ChgITb0EOFu+bnw7SQMJ7LNASzidwhkO3UuyJsxDrSB6Q8mMwDIu/7WQlgyRRT/vBufJ0cE0tI/
 l9D+ET7AV1TDA1BqsYjeF/7duuEIVy7vR+7l6EdqJ/Oy44XrFdRPgXt8IUORTeERTk2NzgTpSrw
 ue9uqACuzOKP4ElGxBSir7hs3IoDxugVaH+2K6mcSwuTVoKOramgYp9dm/bzR79oFpuqcAVc2pW
 6TeNexf2SW3gu3wS2O8NFsOW6oM7CX3N4H+oMw+f9stN+2eBXbfsOQ2qzcdq95nwEuczNwId6i8
 azZk5+IQpKq2jXS2UzcjqqgX0esEGc7r/oXjl6MuL8S5DUuqidtErHSl2z7Ta3ywbW+EX3gYM/e
 y7U+08lQkJ5o4Kw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwMyBTYWx0ZWRfXywWhJhcCUViA
 0o9u+ZmndkM9wEhc2C6HGENG/6CtGst6GYweMe7A/J6MNvcz7W8gM7NlHVDA2fQgAvFN3FnH1CQ
 YMVHpH1WL1G85e0CuBs8vcXza5Q61GyJtr2RcwCMQUrRShZv22wU4q8L9/DMVpQkessIs9xdBmW
 paJtZ6VyKmy6zMX6gZEktyO4DZMSd6204XPCe+tgI2fOpMlEtwNHz/l6m+E85f40QLw4n532nAj
 C5OlJ8Yz2LBtqf7IDsdr3fIy+cAeD/C7gLoVwpTfciOBorU+dCcjmr5s6TWUbzFV0YtA57nwYGz
 gfCI+xuQ3KQnKD8SErEjewyHh6JqTnXrbuekz0eYxtrWr319uUWAxj3MHAKyOqCAEkJATc90UOY
 Zt7erFjPy6KPun6m4d3M1GTb1c794BDZwGURAr29ld277awBwmpXGF4mFk/SruXQmRtSOguaZKm
 OGsBDRzUGch2J458cjA==
X-Authority-Analysis: v=2.4 cv=T9CBjvKQ c=1 sm=1 tr=0 ts=69a6dd3e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=ghL60u8iUD4uIiEFN3gA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: hQ_91vtczsDghMf7uZbZuLhRCOHdDcg1
X-Proofpoint-ORIG-GUID: hQ_91vtczsDghMf7uZbZuLhRCOHdDcg1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030103
X-Rspamd-Queue-Id: C77D01EFEA2
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
	TAGGED_FROM(0.00)[bounces-270479-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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

Add DSI PHY 4nm v5.2.4 for the Qualcomm Eliza SoC, fully compatible with
SM8650.  Note that this DSI PHY, unlike the Eliza MDSS DSI, is not
compatible with SM8750.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 9a9a6c4abf43..3ce8a9ff4555 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -29,6 +29,10 @@ properties:
               - qcom,sm8550-dsi-phy-4nm
               - qcom,sm8650-dsi-phy-4nm
               - qcom,sm8750-dsi-phy-3nm
+      - items:
+          - enum:
+              - qcom,eliza-dsi-phy-4nm
+          - const: qcom,sm8650-dsi-phy-4nm
       - items:
           - enum:
               - qcom,qcs8300-dsi-phy-5nm

-- 
2.51.0


