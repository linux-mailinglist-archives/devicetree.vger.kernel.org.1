Return-Path: <devicetree+bounces-261757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOV4EhWDgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:57:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DD51CCB512
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:57:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CD7EA300B5A4
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF71235CBD3;
	Mon,  2 Feb 2026 10:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E84rGubN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GV4W9ITF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748F35CBD4
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029823; cv=none; b=h194Kz9i6vIpomBN9JZ+v4WOPWOO/XPxjfALTUMEprup9oA4AyPGQ+hqssayDNtn/B+WBV1NuMov6dspOflkYjYXGT5SgqmP4XXQNxvFDqssoCLwZezZcjxGNUjL5kUZws1q8478n9EpyqzGmqhkXQ8oiCO5s3QNWv75nWpctYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029823; c=relaxed/simple;
	bh=oBByzlgd5XJdeoOhoX8ohnoctxpjedUY79GPYnbYxZ0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dX+f87zDnzmNPIETvu/tcHVqis2fqW+4YqgdiIkSuTiu4ACnse1ElMx4qoaF3VjOSJaaW2GWsq0+Ifu51UGJpm69Xba2AbxrqAB+ExODQIPa7H/wwofCcwNd0+04By6U89/x0klXkA4ekLP//I28s4/m376Al+6ljTkbwsOkaEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E84rGubN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GV4W9ITF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127ea3K975770
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:57:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3M5GIttaQ75t49IqSrWQ/C
	tOlMXTPDRQLMVJZb8usog=; b=E84rGubNZyH5Q42ND74l8bn9BdQl+Wdstt8Lw3
	4gq8ve+msaJdQ5KzOjX1AThk0VgYbilv3cYCoq2pMRs1LSSugqo4N1KYQeZZA4HS
	Xcr5AQWVKIMepC88m59mltRxCR3od0krcX+PkQtpnYEvNrPpG/4iuXd2TDeZwMR3
	DJcKISQK4A4a8ux+MU8ERz5diQQH8SN6E5HfSeyxLb8w+Ex/ff/S4qRS6lk3IKb4
	IgS56ajCKCc5QQW78O1Nq2SMnnJ9Fqxuffa3PhQmr2zhfzSIse/Z1nhNps6JChsV
	lQRPSLMM7xUUmiowrQZVTqbDITk4kgPhEnw2QnPL3N20jVog==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awnw6ft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:57:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7a98ba326so48895225ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029819; x=1770634619; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3M5GIttaQ75t49IqSrWQ/CtOlMXTPDRQLMVJZb8usog=;
        b=GV4W9ITFarQ4ceHkvl1OQZI1Kxau8yjXtXbujxbMJkCClXE8mnDAzWad1wz5nv8reb
         nzylk0RdzxtKxvd3s8tg0aK7PJPVoZ+e4haS6ytBRB1ZuVO7u4TN3GmcwgX2dbMwL+Zr
         /79xcVn+zyEK35yhiqN4oiUNFY23YipjIDIZDxghKyDeWXCPtPclYBCytj7Zv3VJ1pSQ
         Pw3vRCh71m/wReQRTO+5RgOKax1J17pirRlzIhxtYY9Hk9FAvm+4UOUnDf4IO7lznEpb
         FnKrHmJ0PuliaroXctik/g8jPcm2AurOJFqrqd8Xz9dDgKpHMcAQ2/euzQC/FYxXU6fG
         r+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029819; x=1770634619;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3M5GIttaQ75t49IqSrWQ/CtOlMXTPDRQLMVJZb8usog=;
        b=bBcs1cEuPMHM34xD7dXS+sz2FVSpf+/AQ1VgwXIZBCojkreNQok0HkViR3t1HtgYqX
         /KHkNN13qrJkQTkQ1vb2aWwf5EASJx+KaZ0EfAePKUhhpwZnRqJQLNHqfSMD7SVR1EjF
         5cg8egYGjtiHPwBxOybf5KrDAmV+HrMDXc4SMxetgW+v+RHuJ4TbHXWtz/Rv2M2sqaI8
         91MFOSoGykshZ5/IUK+GhtV5/9iMuo0fCjw4CqWcGnKHB7lxcVbo/ti29VH9ZCK7g/Td
         S7puSDkUChXqoGuDSRkkNmDSw9xW7G42Tq30G52pD47tUNUX7NbjKF2dNCT/q9DwPbLv
         xAkA==
X-Forwarded-Encrypted: i=1; AJvYcCVn6KPMifwZGoiH/9kXABqY8zhp4qX8kbu3bq5gqQJN4p5zBeHSL2HhP/RfKB1cPhE2JC7pxCQ3OOUf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+DycO7VRS3oRshHDHisc31Hxob4YFID0mLjFX1as/IY4fE6l9
	DdVJqKlpRg7dr79GsWhRTMwpKOC0YbYrm055jHpVwN3xSwf9v7rlHA/93mJrGggXTYY3q+GpTcm
	Q9TH52TAdhB/e0Iw/AtfrgxiO6n9Fj9VGrF8OW8SlFydO9ZU0ChhnIfz+vrZ/5A7G
X-Gm-Gg: AZuq6aKALEYse2wLMEeIEbs3F/86XSJbtElCMh89RyxiUJ4+BipluJxLW4OjckltD8o
	iPgTrRStaeckpFHzBy09BxZPSs9UenbWrTirFzkbumDJAQIZvfcd+1LOwRiZVVgln3/A7wqWGRB
	O33kt9LvnIcOhikgkyz1EC0cZKqYE0jX0eLa/Gsk7/rGDsY/E2N70KocTikJD/eLyROIdJD72Hf
	jHd5o51ZYf55POdutVD9dXZAuoPxoyu5xhsi6VELT4/IP6gBdzJFk5nKPTgmO5Y1TbUKFTBA3Kt
	J1KIBJKBAiMG/PNPCOKQu3pjjhrqbjny94+IqqEBLFKYXA4O53kW8n03Wma1prQxW4uL6UFozsB
	xn8GkAMJlx4JZPCm5cdfw9eDY1F+tOZ1wbA==
X-Received: by 2002:a17:903:380b:b0:2a0:89c6:1824 with SMTP id d9443c01a7336-2a8bd410e7dmr152931955ad.8.1770029819046;
        Mon, 02 Feb 2026 02:56:59 -0800 (PST)
X-Received: by 2002:a17:903:380b:b0:2a0:89c6:1824 with SMTP id d9443c01a7336-2a8bd410e7dmr152931675ad.8.1770029818508;
        Mon, 02 Feb 2026 02:56:58 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c4665sm143981225ad.64.2026.02.02.02.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:56:58 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v2 0/4] Add the support for Glymur Video clock controller
Date: Mon, 02 Feb 2026 16:26:49 +0530
Message-Id: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPGCgGkC/13MQQ6CMBCF4auQWVtCC47oynsYYmgZYBKg2kojI
 dzdSuLGzST/JO9bwZNj8nBJVnAU2LOdYqhDAqavp44EN7FBZQozqXLRDcs4u3vghqwxQupjUWK
 rJZ4Q4ujhqOX3Dt6q2D37l3XL7gf5/f6o4p8KUmQCsWxLfTaYa7pa79PnXA/GjmMaD1Tbtn0Ax
 kG2H7MAAAA=
X-Change-ID: 20260123-glymur_videocc-1b5486fb1676
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=MNltWcZl c=1 sm=1 tr=0 ts=698082fc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=fIyPvZiF_eL1qQs3ZgoA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: jgRk41SaYzoFCvcrOekdglYeQjkh3Pke
X-Proofpoint-ORIG-GUID: jgRk41SaYzoFCvcrOekdglYeQjkh3Pke
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfX+wYE7iQDjI+U
 2yKYSE9mRglt2ddlMXo/Lpcmk7sRlKQ5BY6/qzFKI6xiLRTLmpPwMwmh679UGwF3O2HTTm/lE3a
 Fhhf3yDX2HVwdRJnjBweNI+QRTu0Yfyv9X9tU2OJOh9ceCds+FBbZ5lSNsXzDNCDQAYoDs7ITk9
 MDjrVLhWA6QwbVYzpVs+IhgLWfQgXjbkhByH8xJwDx/0BUZQieWsJVnbBfrtd48Z2ROZU3zzupd
 a6SiFvHXlTVVank4Z50o4Y5mV/2LWCgyTO4Nc6UxFkjLjNGZY5LhNHJ6/a854pFKcy2CotsZnlz
 JT4LFdAAe61t42A0kdaXyt9DK7eymv+E56TLicVkpBpd0SKbrVQTpXF7DW18cAsceT7foFhgTr3
 8Uuqk3Q6G5tHrDZloj5rBqzJM1rWSKXxhMOgwEEFnbRXQLeXNxM3TQzUkBReahU9h+RwC8EL15y
 OQchBYlvgoPFY7yAynw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261757-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DD51CCB512
X-Rspamd-Action: no action

Support the Video clock controller for Glymur Qualcomm SoC.

Changes in v2:
- Split the GCC reset clock additions in a separate patches[Dmitry].
- Link to v1: https://lore.kernel.org/r/20260124-glymur_videocc-v1-0-668f8b9c63be@oss.qualcomm.com

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (4):
      dt-bindings: clock: qcom: Add GCC video axi reset clock for Glymur
      dt-bindings: clock: qcom: Add video clock controller on Glymur SoC
      clk: qcom: gcc-glymur: Add video axi clock resets for glymur
      clk: qcom: videocc-glymur: Add video clock controller driver for Glymur

 .../bindings/clock/qcom,sm8450-videocc.yaml        |   3 +
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/gcc-glymur.c                      |   1 +
 drivers/clk/qcom/videocc-glymur.c                  | 533 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,glymur-gcc.h        |   1 +
 include/dt-bindings/clock/qcom,glymur-videocc.h    |  45 ++
 7 files changed, 593 insertions(+)
---
base-commit: a0c666c25aeefd16f4b088c6549a6fb6b65a8a1d
change-id: 20260123-glymur_videocc-1b5486fb1676

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


