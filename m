Return-Path: <devicetree+bounces-11952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 286267D7247
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCEBC281AE6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3767430CF7;
	Wed, 25 Oct 2023 17:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="AMx2OflL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB0E1D684
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:29:06 +0000 (UTC)
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2813138;
	Wed, 25 Oct 2023 10:29:04 -0700 (PDT)
Received: from pps.filterd (m0134421.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PFa8sK006074;
	Wed, 25 Oct 2023 17:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pps0720;
 bh=ODs5ZcF4dYSOy7ucmTgHFyaBQlOjJayE/j222k9NTTk=;
 b=AMx2OflLSyXuo14B/54PZyGbAXN6WlVtA+axwBtT4E3px8xhiqigjrHcYmVIfrRPRMIv
 9dK3fqVvTERX9f0QE6Ycyz/Mm+AosE0l9VhoYPwOAAo6VrsqEPmiXw1f1ZO6Me/Z4JlW
 s7X/70zS9Oqz3QWd5UFsYbT+nyW3Fs4DHQ+9CvokeuXcfJ36YeOztKop9ayravoLTD8c
 pnncTm0hMDHXZAmVkATfkcg79Utrxcd4/ig5/kb/hlTnIJgAxo2atblA5bKo/Jz1izDS
 7+NnuXYqoibpMEEU8nDcYc4RsQPcr30l9P1Y6vi9wyHEwdEitzbaDnDgCM1mUiYXLtxk Xg== 
Received: from p1lg14879.it.hpe.com ([16.230.97.200])
	by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3txjjkvms3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 17:28:55 +0000
Received: from p1lg14886.dc01.its.hpecorp.net (unknown [10.119.18.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14879.it.hpe.com (Postfix) with ESMTPS id 7241713149;
	Wed, 25 Oct 2023 17:28:41 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.36])
	by p1lg14886.dc01.its.hpecorp.net (Postfix) with ESMTP id F3D2D80E4EE;
	Wed, 25 Oct 2023 17:28:40 +0000 (UTC)
From: charles.kearney@hpe.com
To: charles.kearney@hpe.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        nick.hawkins@hpe.com, robh+dt@kernel.org, verdun@hpe.com
Subject: [PATCH v2 1/1] ARM: dts: hpe: BUG: Correct GXP register ranges
Date: Wed, 25 Oct 2023 17:27:32 +0000
Message-Id: <20231025172732.489264-1-charles.kearney@hpe.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230920152514.3889174-2-charles.kearney@hpe.com>
References: <20230920152514.3889174-2-charles.kearney@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: nbh7KcTg3PGKmEkxsnd8Ex30gKKodTVr
X-Proofpoint-ORIG-GUID: nbh7KcTg3PGKmEkxsnd8Ex30gKKodTVr
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_07,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 mlxscore=0 mlxlogscore=369 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250152

Greetings Arm Linux Community,

Are any additional changes necessary for this patch to be accepted upstream?

Charles Kearney

