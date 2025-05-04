Return-Path: <devicetree+bounces-173471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B00BAA87E2
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 18:16:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6DD6170CAD
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BEF41F4CA6;
	Sun,  4 May 2025 16:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HnA4f4aq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BF21F4297
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 16:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746375239; cv=none; b=RZxzaIyWIXSN/stwtukLww7n10wtSIL85g5YDq/hRFJrUiTAHsZ/UR0GifoXiEAuYvGPgeDf3Ke2Vxdqh5N8SlsxtyQg8mH/1sMKAEbW+ZxOwoAGyHK+QXSNCPcJZv0ny8EO915bUixiGVSVF01NgyLYwowh9ApfQM2jQ/9j+vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746375239; c=relaxed/simple;
	bh=GoymrrvT+xbHk1nFXIyGwohvSJZVfRO2gKNmW6FLqjE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ChrWQwy5B4PA7iMuf4W2sEOg+oPdNMCtOVlSrd8XZL8QtMF0ZQsGAHvbwxJ9RD1i+ligZAYwLJRrbQ4KOIr/wNLMRK4ZDPamSsvr47ac2T4zbrB/HTYAMPceJCAZsFNyURWJJvXg6fxjW8OUND9l+r2j2nARUdHS58gvXi4F/Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HnA4f4aq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544C0KPQ003359
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 16:13:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cfdsQNjtgTXSpICV+XJjH/jK4YQyRmRdmbdXbvMbr6I=; b=HnA4f4aqSTGjwKOb
	Dm7vLbj/46k2CAS2BXIF3QnAySBj1MkUoq9Ke52uq3Djd6NYKVmKZ7UYy04UFyb/
	wnIYMx3iMQBCVUk0AuiEQoZkDDtiROZEbyH5xE0sdCFXouASd+UtRVlwto8PY5er
	w8lBtFCDM9B4YvW1NrZWPsIL6RcJy0JfmlC1J96JqF4+8vFsG9l4aVxwK/qm9lLf
	qZuBiP+fQfa2l34JmPWLUI38drmgh5FWAMtZKB2/OZPKbFB9uBIjyqYcUCLzWW6/
	acMx69grj90RVvygiKE4BgKTa94LveXtrYIu2+L7EwZUzMLhbazoLLdoKN285IJy
	Up1cIg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc5a6ey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 16:13:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5bb68b386so498624085a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 09:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746375236; x=1746980036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfdsQNjtgTXSpICV+XJjH/jK4YQyRmRdmbdXbvMbr6I=;
        b=O2sxe0U+Wdr9WDFiC8e10Z8XtqKOnHvMXSBd1E3uheX6K5ySaP3GyaRltEuTk8Lk0a
         liT9E8C/8vt+ss5wm/XhEHabyPs25wfhg3Yz+hEEwJneWzmDwjnry5x0HpsCkVM51b4/
         wBhFv3BLaGGA0BukEGB7jcUDBKan5GDQwi44lFHVW6jDCAlERIy2Q7czzbffyUQFQ+EB
         Mg1vCvUX9hMMSntCnExACJ4SVtWXL2ZmkGGvTnoujQqwOs3pw8F/00rpd/4drRqFio2R
         xsQntHhd9j+93FEkr9veFCj1TpH5DO+FJxq4MSdWGZZCD+hgY3cGzE3ymkZIiwm1b5H1
         4IvQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2s7KmPxpMde0RDEH4HIOyVdvEr7xyjW6TPzvBSdfpyyX3HeQrWT2BQQJPZjeWgGohHXBLbiWkIiFj@vger.kernel.org
X-Gm-Message-State: AOJu0YwiGRuIvpRx44Hl9befZ44C/NmEwqeId2enMa4Xz0FOXUBevcMJ
	M9coFGCc0XHZTLlkbxS0h1qglgRkmXRbQl3GjLDGe1HeHPeUYlsPyxsc8I0FUdgxyzZ3/ehSKY0
	S6svQiAk+gXxegmnEekyjL6ieaDvYuHhpSIUHLllurzniPCfhzFFcDgMellkg
X-Gm-Gg: ASbGncsTzJBPo2acd+e3Zy/r/hlTIoECbhiP+eOgu2UKZdaM8hx6uPU7WeEC0jdcad1
	aUTd+7t3F2U7EI7lFXmSLgMm4zNgF6N29SQeqNFrhPhM8a0OKkf0Yy9+DB2CYvSOyLsNJqFT0eU
	9sKg//2WO8ilD5akp2f7cxHDxAOFaMiqtVXbnXitUIw6sBam+vnNCv7eIQkIFNj+7aj4BD6V7Qp
	w8coxS+D4G6Gl/KXZseJzcIc2Pyx2nc07Skqd+R/hOC6mnk0txMjbiLNOo40hQwaAjY/jRIv/5U
	+6A4Awwa+cBMqps44bUsjgAschrC5fP+edO1CryPxlp8Y2MX6muhAa3ugcTuljRI0EH32E5h7EO
	ExElIifyKMI+43AIbbWry4gf9
X-Received: by 2002:a05:620a:3949:b0:7c5:6140:734f with SMTP id af79cd13be357-7cae3a926c1mr607135585a.18.1746375236077;
        Sun, 04 May 2025 09:13:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESd4V/tl84ujiy+ueBS1wdjRHJiBAwRJzy9189FWkkAARUTf7JATItoLt9gDMWQyef3WGC8Q==
X-Received: by 2002:a05:620a:3949:b0:7c5:6140:734f with SMTP id af79cd13be357-7cae3a926c1mr607133085a.18.1746375235745;
        Sun, 04 May 2025 09:13:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ee937sm1335231e87.142.2025.05.04.09.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 09:13:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v5 00/11] Add DSI display support for SA8775P target
Date: Sun,  4 May 2025 19:13:31 +0300
Message-Id: <174637445757.1385605.6744814496349716759.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250424062431.2040692-1-quic_amakhija@quicinc.com>
References: <20250424062431.2040692-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VI7xNcumKBwM06MPIvHAvAdqwW2qjpUf
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=68179245 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=rcLBrfNTdlfi3Zk1C0sA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: VI7xNcumKBwM06MPIvHAvAdqwW2qjpUf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MiBTYWx0ZWRfX/aGJLYkyd27V
 EUJUQXh6NndyJOefRtO8Gd+EEXC6znxZ0I3KvXw7JqGFUyf0PHSCvfCTjD5fkBPdHNMnllQqlII
 1H0vLS3qZA1ckEOOIp0Ab1tFrc0k6/wULHc1q6txz61DmebHGRGoilJ+JqJQpJxgL+LJEBNxHWN
 +c2yeYkM2lpNu+kYG27Y0af2OnqYsixBTw53ptzLc76wXYBaYzEf22wgo6soc+zfZ0RQLVS49MK
 2RK8xI1h97TRpnBCoWfZ2QtzjlmYXAH3zmLIgqioEy73ExPaY7D8/FfJ0CfXm/SdWDs/Jw0rElZ
 OVQb/EPrBW/AY/A2V1gYqGiZC3UUZ7p4BNKRdjB7UOIiTSrki3CxJ2bkCfDh/YVEilR9IS7f7CS
 pr7oOIDlRNAbDjA1nhcRVb7LgZsRpy1pFH3ML2RrUsUBk1bPdYekebIiPtPH+eBqMxYqOgiC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=889 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040152


On Thu, 24 Apr 2025 11:54:20 +0530, Ayushi Makhija wrote:
> This series enables the support for DSI to DP bridge ports
> (labled as DSI0 and DSI1) of the Qualcomm's SA8775P Ride platform.
> 
> SA8775P SoC has DSI controller v2.5.1 and DSI PHY v4.2.
> The Ride platform is having ANX7625 DSI to DP bridge chip from Analogix.
> 

Applied, thanks!

[01/11] dt-bindings: display: msm-dsi-phy-7nm: document the SA8775P DSI PHY
        https://gitlab.freedesktop.org/lumag/msm/-/commit/850e13b65e3c
[02/11] dt-bindings: msm: dsi-controller-main: document the SA8775P DSI CTRL
        https://gitlab.freedesktop.org/lumag/msm/-/commit/2a0195b94cbc
[03/11] dt-bindings: display: msm: document DSI controller and phy on SA8775P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/a6f2524f4d5e
[04/11] drm/msm/dsi: add DSI PHY configuration on SA8775P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/d3979192fac5
[05/11] drm/msm/dsi: add DSI support for SA8775P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/249a965c3759

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

