Return-Path: <devicetree+bounces-234145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B7AC292C2
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 17:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A36A91889C0A
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 16:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB465246BD5;
	Sun,  2 Nov 2025 16:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WxTRJY2v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ebG6bRQN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B5E224F3
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 16:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762102110; cv=none; b=Uw64FfF1ywSlbJWR3ZQm0idv4APx5c7r3zAgj+Dkc5qC27YnOWrxaIKOAbaKi4lh73KMF3PyNRFBfCE3GfwDlUqg0HWScjcTOtedrUwCYPJkwGVbKef3N6ZzoSwZy28rumv3lZZY4iPSl7ZvxfaHeM2Pb8dnNrWx7cIlqc3aTXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762102110; c=relaxed/simple;
	bh=PDRCwWAw4zLhj5fO+O4LU/ku0bQSkjJNl9hIm4G6H8E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hhtLwVCxd4ZTD8VMlCsYQdy+ySr07h7zE/Wl7YNKeHLRVPN4cirR3Ohu9V+GI+CUzBY0wqeKi/X4f7zzjahS3iaqb09TreW370xb9v3sZbadSvTZOxA7Omk3r2MgOctLsaTs69yeQP0cjf7t+EASgbMwzCU1lEdEIdd68ZldUto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WxTRJY2v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ebG6bRQN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2Gg7u1564969
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 16:48:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=udj7T7Cj28h7tfx0aOeVMexss2vLL9UMfeK
	creEJKNs=; b=WxTRJY2vAVWpri/3LkFTtXycnaq5abUUWyNu4ipt04YzZh/jouW
	EyUzhLL4X5O+dYQR3vzIIPb082fWVOBNaNu49WyIWlZXsgzYX1ojGN7/7h0KdI5d
	x4mCS+9u64pCbhVUDbh5OYrHu9RU2qP7OWUYlwf+ThmV2UpAOSSBRLudcP/MBvxJ
	IqgusGS5HoGSpnmTHRPXNZxdry4dpvM1TvpvZwVpucqc3oio9LcpCeVMYgK5Ue+U
	ExsvwLJTGuqG3HWBXmWj+U8qF6nzrDYrJDfpuh6lYXq3pjAg7dhVcq8GF0N8im8Z
	NZw/c5uzbKHHhNqgyY/HdAKyQrZ+Tox1IUQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bcm29n5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 16:48:28 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b609c0f6522so8578512a12.3
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 08:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762102108; x=1762706908; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=udj7T7Cj28h7tfx0aOeVMexss2vLL9UMfeKcreEJKNs=;
        b=ebG6bRQNJqdTITJ/VmlBtiPd7dLpLkfgvPVhHCNoaT6b3N7itfT5DSJ2VU2XppZP3b
         j3/7W6w9ntsuqI3Qr5iHOdQaKFargsFqanWVZRiVvA4C6IsZXB5UFf7lirIKIS/u0eWr
         clmrbQJiSHT4XyqJF1gsDOJclnjf2AC5EumT6sPcpyf7BMosjSDExQ3iumEf7GTDzAWf
         uh9sHMb6dO9oUAzGl+9QCXmKoi6PMIUNNLPju1nrSQkyBEqhHoXuDRloqyeAcilJqhQz
         t7+QtEgudJAApkEvtfd4wIqTwaY5/x+ryCB/mbl4UWhuSxUaJ6y7814tXmhWc8DV4o4Q
         c0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762102108; x=1762706908;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=udj7T7Cj28h7tfx0aOeVMexss2vLL9UMfeKcreEJKNs=;
        b=vCWanT+5etvIJrBn6M0e9ScpdehVlL/4AeHfzMGq67xBDwqhipNIenB7GiNWY3vOYi
         neWXDIQ1sCQA8zc3mcBv50rlvoEmZh6u/0ybHwpBEC4VQJeJPPbDZeaJ+fb7onOxmIm8
         1RQd9X2yQKIwgq9caFUgZOLEus27vR7Am8HVQvFgZuEDUdiqKJiyJwcrIPH5OmXWKxfz
         VUp+0pu9UMT7xQWlEAGHCi8YYVfuPLS1e6vliNnVjQrLR+v+NV5W55Zy1lwi0+alAGvC
         7cdTH1zbA3IO8/boH7r1FmwdmOP+GS1dR90i/c7p4hml2MwsQLzQICs78ITq8NUjO+BE
         JRVA==
X-Forwarded-Encrypted: i=1; AJvYcCXvI7jiJF3PMWdtqVQSnacLwhjSaDy0Vzme67hNuAYasFuYj5lOHrrxIS6UASh1xFj31YsJ7JtxXy0K@vger.kernel.org
X-Gm-Message-State: AOJu0YyATq46SD93wobYMpTvOZ9m57IFxuX+L/OfWEkw4zZKcFLMGPAT
	rO6mcFFX5CRw8ShqDfF/zTVv9o0jhUJ7P6CskGS/oovi8TgK4ljwuF+lm2pQ1V6pZJYbKTCGuB+
	+IQwsetm/4l6T6YVHJcDtkRuyuuw90HP7nFlkuePGJHsTeciax+R6mAwCpmiHK/FG/xBVHrZi
X-Gm-Gg: ASbGnctztk9MmNtvmThJAL3/8NgzBHJhV7j6RHTa7AANNE+BRsuoY99iCTrsfH3N4h+
	LlWrLIrLYFBnE2cViSfjR4VBd6bxyVNECs+68g4diPS7tHcM+M//gHB+FTkd7fMpf33rJ6H/JSk
	fqR1rXRbyLih880cg0dNWURGuItigk46oi3YLFTm7FY3HHwrdMz/gVmDTqTSP9mkKpY5/G0peQj
	gPWdn5l8kbP0208p5s0Iae26684FUdeUMZfMKipuU28kX1R3JxHib2iMLmmvu/BEgI4yKJP9ZAT
	Q7NhhdsrA1qYU3mZJVDKXtVAXn4U3MSnNsrwBLJJQA4RJ++x59vXy4gxboXxONWZvk4jbgwGq08
	8vq5JDlTOMhygjQEep8iC8u7S8A+G5wEHoPaz
X-Received: by 2002:a05:6a20:258c:b0:33f:df99:11eb with SMTP id adf61e73a8af0-348ca15afa2mr13556423637.7.1762102107516;
        Sun, 02 Nov 2025 08:48:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH87wFetbaiAuC/psagPJvcH2NpFNha2arQJdLWwyoEanSrv8miEf7whLnmWsiRx09Jo3vJDA==
X-Received: by 2002:a05:6a20:258c:b0:33f:df99:11eb with SMTP id adf61e73a8af0-348ca15afa2mr13556402637.7.1762102107038;
        Sun, 02 Nov 2025 08:48:27 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bda55f74sm7708125a12.19.2025.11.02.08.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 08:48:26 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v6 0/2] Implement vbus support for HD3SS3220 port controller
Date: Sun,  2 Nov 2025 22:18:17 +0530
Message-Id: <20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE1NiBTYWx0ZWRfX//p/tVucmlJl
 WgkcOxcSj7CV4BfIQoF/65LsTOTPs0rqWmNSMLa/nUayj39NzirkkqyU6+1dzKcoHC/gUVkfW/M
 WZhg19T9CgzgRDhRS0BUKLMusHZxLUCAFjn/XsUjTf698dZipMZk5noOlH85kHw26ZiUIaSqagx
 kCmZ21KCclX7Q7+ytx40O4aTFRPBUXxxG7BffjyOKWW23EG4A6y7pNVaQ4neJBWA5Rx5HLrTmtR
 JzvWWRTqD3ua7kh++7xCdfYbjXiENA2aq6v9kgLGEaqqd25ukbKsI5sHRiWS8rsl6nWxskV16Yu
 qABer5nRDR3ahXHcIPC56dt+O6fF0zKHd5V+91bSnhJ8qTKlysAWFutxChizMaLZAav5bBQ5QLT
 hREdyk0pgKmXqO91TZ/VfF568ny41Q==
X-Authority-Analysis: v=2.4 cv=EszfbCcA c=1 sm=1 tr=0 ts=69078b5c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gs8g10pPhjI8XjwtQ3cA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: SjFt2Nu-2IxJ_ca0EaFv_x8pFl8cIE7f
X-Proofpoint-ORIG-GUID: SjFt2Nu-2IxJ_ca0EaFv_x8pFl8cIE7f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511020156

As per the data sheet of HD3SS3220:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID pin
low. This is done to enforce Type-C requirement that VBUS must be at
VSafe0V before re-enabling VBUS"

This series implements support to read ID pin state and accordingly enable
VBUS.

---
Changes in v6:
- Modified logic to get vbus from connector as per comments received on v5.

Link to v5:
https://lore.kernel.org/all/20251027072741.1050177-1-krishna.kurapati@oss.qualcomm.com/

Changes in v5:
- Modified error handling in driver as per comments received on v4.

Link to v4:
https://lore.kernel.org/all/20251025122854.1163275-1-krishna.kurapati@oss.qualcomm.com/

Changes in v4:
- Modified logic to check for vbus supply. Directly checking first remote
  endpoint.
- Used of_regulator_get_optional instead of of_regulator_get

Link to v3:
https://lore.kernel.org/all/20251024181832.2744502-1-krishna.kurapati@oss.qualcomm.com/

Changes in v3:
- Removed vbus supply from hd3ss3220 bindings.
- Implemented getting vbus from connector node.

Link to v2:
https://lore.kernel.org/all/20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Fixed inclusion of header files appropriately.
- Modified commit text for driver patch.

Link to v1:
https://lore.kernel.org/all/20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (2):
  dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
  usb: typec: hd3ss3220: Enable VBUS based on ID pin state

 .../devicetree/bindings/usb/ti,hd3ss3220.yaml |  8 +++
 drivers/usb/typec/hd3ss3220.c                 | 72 +++++++++++++++++++
 2 files changed, 80 insertions(+)

-- 
2.34.1


