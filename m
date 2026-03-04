Return-Path: <devicetree+bounces-271021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA/HEKYsqGk+pQAAu9opvQ
	(envelope-from <devicetree+bounces-271021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:59:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 883511FFEF2
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:59:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA4AB3033885
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 12:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843732517A5;
	Wed,  4 Mar 2026 12:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b0IAgbg0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ApZm3PZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2049E223DFB
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 12:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629145; cv=none; b=OHU7J5VmOsZaXQDGNvCE05QuATj8JHdc7/ReLc9DsI+xkmARp7O6eumRCspmbNBbvrjqQLJ7AYpJGV/qo73kSxchMBjlqzeulSRbCiSRxcbfgdfFnujfRu52WkmTX7DBndZ845rZw8Wr1jw4ed+gNggvs6hDfdNvG6qIE+KOePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629145; c=relaxed/simple;
	bh=bBysXkvToTg/D23q142BpNcuFOhczPliT/xNmNM82Oc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CSks5C5dDjrXOhZvIIvcKC3q7rghSBKjlTjKRthMf60qnMUTed4oijNDgoTy3T4LrB98Tz6LbOWoLiifsPyBaN7hLQBux11FCtxwVrCza7hJ92K+JzU8VkBoixSVrsFCV6tJIuDhSMq628Y4ZE5GTafR5A77VguEU6V84sDPBWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b0IAgbg0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ApZm3PZu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624BuNLE2306199
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 12:59:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Qzf5HxDIggFA/Gb2AY/ukH
	FIWaqqRzZw0bCzF+X9vzg=; b=b0IAgbg0voYqIE723owTsQGVZv+itVQ11Kjf/W
	nB+0D0IjczhgWhf31WiM5NuGdN0V5HBu6WLxgQIMZawjTmj9g5a512+eSMouSy3m
	jNTLL0FUh6mMyWahqvTyPaqwKZZp42ikOrsxHytqac6m/plzZzcRdwairR7iAWOL
	QCjFqZAtt75XKF+zlsrYHvz7tY8jUqMxdYKInqcqBWEtmfQrDK319wu5PfYbUOd6
	T5tEXiY1T8noIqiMMzyP65WjEpSeV7jrA5gO5sXmyoD6pPhJNN6ZJO3GsUpjKZFY
	InVx26NGU/x7rGIeCWEe8vcK+BhhEN6d86AogaJrRuclyBXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8t64c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:59:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70cff1da5so3983972085a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 04:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629141; x=1773233941; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qzf5HxDIggFA/Gb2AY/ukHFIWaqqRzZw0bCzF+X9vzg=;
        b=ApZm3PZu2xR4ShB5LcIaWrX+XVQYMj+FYBh+JN/CXj9TOun/zP3OORAP3dj9eJ9K4B
         BxjsTsRn70oMwBd9HoxUpqEaXMG6Gc66MLyEw+CWOWsjoUId0+xfgu8WxUV3UyF0nRbH
         OuEVjMR3yQM1zsCUCe3BXXv1JmS8bmWxMVdEXbN52BlSuY6v+AVlFgJeOM6zLvGBb4B4
         4Sd+8c4zYOZ63fRw+I9CJDpZkum1SdKKFrlMeeLEPhbVcqpx97l+SjoSLRfvt7EuHH9P
         wSwjmzUUh80i6FbJXREn5zPB8+o3ewndwdRYZr1CtyLXd0jD5PnTTqayEcTm2XvqPBln
         NBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629141; x=1773233941;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qzf5HxDIggFA/Gb2AY/ukHFIWaqqRzZw0bCzF+X9vzg=;
        b=wkFmwmMTt9IrjH9or6MtZa+pPvKqK67O0iMwS1mx7IyCvmkPdGXcZ3UT73B+yZuEF5
         IpGJR6knqD8F5jCmc+ft6xgMBDL7qYuWFJcb7orG/dDXv4Z4tbdSF1+PojHNfiMAM/Ku
         NixDUHmj9JM7VDzuWQI2Vs88Tsx0luP9ATN0DkoSUXyiIbnBLOCsh5l9jq9PwrIi8xrE
         lYyDv80L1Unf4pmjizh+m1AGZ4E132uV98etAooBDrQNluH3vzH+X0cCIzRJ6QKGsq+3
         Ekp2+sWb13qekjAmlyP1jc8KhMDrIEFMpMM5d+vCWmNAKfGIwTRVZ/g3BB1/PphNBQvP
         WuKA==
X-Forwarded-Encrypted: i=1; AJvYcCW0cZyc9YkgX7kHpxU3rDyUT1cVsjIJP1cEBNpgsOK8L1ddQKz6dVDWtPBEaC4W+TIQJi3bhroz7RM1@vger.kernel.org
X-Gm-Message-State: AOJu0YwSKmXtcUEu3bgvVQJY2qlT39Brt8AAPbBfqy43DH6WgDm2U7gs
	sw/+81QCbyUargbSqMWmJ6tLGQswW9/+TJ0PgWJq+rl0M91pj8jhErC/5JTlwCvVX9nsFmxQhMG
	eFTOX8anukoKcm96SHuErUhFLb6aUyQkOWe3W9aTZ6965aVouOXIhZFusZc8Xesik
X-Gm-Gg: ATEYQzyi+0h4JTJKs2gJhSvghCCp9kRBN8nMqUmX1wr01DFBwspxJZ4IwKTjTGcsoHh
	OoGdQIoBGYRYCDT0n+fnAgUffYbmf0dCOxVnK0jrzkkBfC8C9Krf3ue6QpD8RHhO6J6+Sle16LQ
	edo6FkSYEMq0LE7XRLIqM+z0DxYFOafUiw7lrxBG9LuFo4m1r02+5jF+Miw2S0U3HK8KaFsJyFF
	4PKwen33TjtsTwjk1ZMhWLAo8GUGdGkZCzdvRRcvJMsB4h+1IPO5Frm1Qi1yW+fjOBuOFpI4WTq
	WGHaIMXdJz6lnp07esb8ly2M+jZ0nVvHj6vYjERY9F97EtXLvQjU4Q+YMCfnM3RLuSuqqvGkfVC
	XoOhoUeBpaLRvobDb5CgC6Hovz/5V5sWEYty5apZx8oO7
X-Received: by 2002:a05:620a:1a03:b0:8c7:fdc:e871 with SMTP id af79cd13be357-8cd5af0bb04mr210371785a.34.1772629141080;
        Wed, 04 Mar 2026 04:59:01 -0800 (PST)
X-Received: by 2002:a05:620a:1a03:b0:8c7:fdc:e871 with SMTP id af79cd13be357-8cd5af0bb04mr210368785a.34.1772629140582;
        Wed, 04 Mar 2026 04:59:00 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c1fc577bsm11318491f8f.19.2026.03.04.04.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 04:58:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 0/8] drm/msm: Add Qualcomm Eliza SoC support
Date: Wed, 04 Mar 2026 13:58:42 +0100
Message-Id: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIIsqGkC/22NwQ6CMBBEf4Xs2SXdlhD15H8YDqUtsglQbJWIp
 P9uJfHmZZI3ybzZILrALsK52CC4hSP7KYM8FGB6Pd0css0MUshaKCHRhhEtx3nQK7qB3xprVXW
 WjDJ0UpB3c3Adv3bntcncc3z4sO4XC33bn039sS2EAo9UkSTbtrLtLj7G8v7Ug/HjWOaAJqX0A
 cJCyGW5AAAA
X-Change-ID: 20260302-drm-display-eliza-634fd1c3c193
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
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1873;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=bBysXkvToTg/D23q142BpNcuFOhczPliT/xNmNM82Oc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqCyHaMigZu1RbUT/E3DkVmWTcl4+8W9KloYLz
 gk2xj8vfoKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaagshwAKCRDBN2bmhouD
 1/amD/9UfgadqxYGh7cuJY5NOd7nfZRC0SsGrkdO7bbJ0Gd3/4o3OqUTSkoarmVmUecG52FCt/a
 uvrLybsaqXWaBhYUAWLpbztZ5Ildie/qJIEHrsPQf3t5pZymj3K8L2TbE96NOI7JMUSFcN9eeOd
 bcTynYDAcd6Vr3zwIteXORA1SE5RFsqRkJtVV5nueDORiddpaqkyhM9shQKGMajslXewb9SZVzB
 xrVAETLdhou2QDvmovkAH9nDiNuBsYqMB5uMs//coQuto+fZ2N7qQD/VyaicehftAJl4uEX07Ys
 FWoh9eX1zx4AhOAqOVeOFc8JhnLrKsv+vehWpAUEG4n9ad+NN6+jd7fYpClgIHkV1fJgkR2PL3u
 3Eha3RPYu+EeqLh/njJcwfIt3xkzPV2+7FxSifALV31VbwNPJXHjZdCUne7QEWLEDEh2WvPDhp7
 VmVCegvsHh7NNdlGIxjmzUfzEZbfN1mqv3j1KqY+GAgeH22XIF28X7z3gbTIL6/rSPfkUqqfANc
 bKH02lW1ig+wxU14uWkTYY7R7rMlmAeVeBz52hBz++1K8/As0B7HFaUEwroMQAiKc5NR9wuT+TT
 tGgSR+UjUG0Nv2Rc9Sfsqc99WDngBl4iwYhN99F1PwyxqpYSnIje/W90ocuxtJAWdBwX6op3OmV
 eKWFtAypzd8A2rw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a82c96 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=Ji9SQXcMXxRat5kPLT8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: 3gaXM9UYq9X1iafhAvKWZheozBtnY57z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwMyBTYWx0ZWRfX8pGe8v5Igj1y
 gWxinwOj6AKbShjlf4cDRZfvO5hVyOJ6Xglzn5tu04Xmpy+44waaNwt7USsXAfV6wx2T82gO3uA
 hrB1wqE6mkbX5YLJomGrNFhR9ZKVbzUYzQMjV1WKH8ieDnZB0l6boWf6oyXOb+5R+x/CF1Jo/8B
 jYqpOFlSlY/RXO9TA6dRd87iAtR7FAdFjkD8SXcdwzyhDo+p+b6qX5Iz++xOqtCkM55iQ87thll
 JmDnan24yaj4M5I+b5kmAhO0AgTMwoZG9JFAct9E4qcdjBiCSx8G9OQ7XlZ5YtEuFeUQDJDC2Ad
 Okw0c9iIqbccNPyxA9FdMLlO2ssYeKWjeFjYEG9FMmFxsHc4LgieeVEC6x2G0oRgn4g1dzLYTsI
 7MAWaGKsoqHjV+7/K3Oz81SVuw76fWkvC45JIUgAS1e+Bhne7d0mBQV00+ZL1ZvHfxcvNJUNJUn
 mhAADdaDldZ4PPvZFpg==
X-Proofpoint-GUID: 3gaXM9UYq9X1iafhAvKWZheozBtnY57z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040103
X-Rspamd-Queue-Id: 883511FFEF2
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
	TAGGED_FROM(0.00)[bounces-271021-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,msgid.link:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
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

Changes in v2:
- Add Rb tags.
- Changes after review - changelog per individual patches
- Link to v1: https://patch.msgid.link/20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com

The MDSS on Eliza SoC is evolution of one in SM8750, with several blocks
removed and added HDMI.

This posting brings working and tested DSI panel, while DP on USB was
not yet tested and HDMI was not prepared.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (8):
      dt-bindings: display/msm: dp-controller: Add Eliza SoC
      dt-bindings: display/msm: dsi-phy-7nm: Add Eliza SoC
      dt-bindings: display/msm: dsi-controller-main: Add Eliza SoC
      dt-bindings: display/msm: qcom,sm8650-dpu: Add Eliza SoC
      dt-bindings: display/msm: qcom,eliza-mdss: Add Eliza SoC
      soc: qcom: ubwc: Add configuration Eliza SoC
      drm/msm/dpu: Add support for Eliza SoC
      drm/msm/mdss: Add support for Eliza SoC

 .../bindings/display/msm/dp-controller.yaml        |   1 +
 .../bindings/display/msm/dsi-controller-main.yaml  |   4 +
 .../bindings/display/msm/dsi-phy-7nm.yaml          |   4 +
 .../bindings/display/msm/qcom,eliza-mdss.yaml      | 494 +++++++++++++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |   1 +
 .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_4_eliza.h | 365 +++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 drivers/soc/qcom/ubwc_config.c                     |  11 +
 11 files changed, 884 insertions(+)
---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260302-drm-display-eliza-634fd1c3c193

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


