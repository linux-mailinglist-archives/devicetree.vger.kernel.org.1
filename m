Return-Path: <devicetree+bounces-273847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PQCNNoHsWnhpwIAu9opvQ
	(envelope-from <devicetree+bounces-273847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:12:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7AB25CB4E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 888D230314D2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE9736C5B3;
	Wed, 11 Mar 2026 06:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZQmLpKbV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rwhzkej+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F7B367F46
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773209540; cv=none; b=KionBdDXE2Q5y20kecnLr6INsr9pNiwZH7EmbhTbaVeRxro7bz+bpQEIHCWwpLEAIa1ysA3NdRnD93lppmElYLJM4sgrT1nT3TJdeElcov+yf35I0l2OzxcNQctciGeWEB37K75EogYwDm/PC4O5AkHow559J/YHWBqmN/LTI8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773209540; c=relaxed/simple;
	bh=bajqm9cxsG4pHZt9QuT3Z4rBHvPRxwuJFhr+WIMKRj8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JpElq4WMaPLXYQJQLD93RK88udvr0JcWA/jfeBuZ8/NfvN0P4dMpQyQqwZ6QLD2nNhtvj8CxRWyKRuEX0d7HHEqJVbJWTTwZmICE5MZzmMyQifqR75FopfN3e9YRDvHnxaIMiXG0w3UK02ogCZMkK3jTkJxhOMmTCey1BWbcmw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZQmLpKbV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rwhzkej+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B4JofS3892938
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:12:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxZRhY5iRDyirvCDrXWUcHCMIwWAOHum4sDVKV6ieUA=; b=ZQmLpKbVVliL2suQ
	I0eRF1Yb6zx5y4zfJSYbDaSoGfyu2hgjKnCG2SVvxgStfK6tBQqKjM6cwovo/i4X
	U1TWJLZXBRbH+feoRbspATLsZbZgIYu3EpP+KgT7Aj2j2pPKowk18gBeCTSRB26v
	3p2klsylMKkrNv4GtgUw8BpHTjIg3cTSJX1KxN0h1aIIyxpPC81UEejq6WIQtAsh
	FammvwWGgYy/BEwbBAmQ9YHPnBaC7FE92OoAT7bKFRKAYXE7v07CYQmzokqRjkJL
	f0O5j2s+zad+yficev01b7Vv8Bpahe1SwvcIhHvyb68Xqk1lStBJlKsAIrnStD5W
	wsO/ig==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyuc4r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:12:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3595485abbbso13164304a91.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 23:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773209537; x=1773814337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxZRhY5iRDyirvCDrXWUcHCMIwWAOHum4sDVKV6ieUA=;
        b=Rwhzkej+jAEz5WkGNMViZU4VUABkM1BEc+JGX+eEgzRWlFiafOoF6DI+/zqmTnikNU
         ylQRsLUO9Bx0WD9jQrNSslgWqhKrGWB7cAra+osyE3NFfuDV3+qM9TP84+S/LsMbHYM9
         eW3+PFJy9EZ4/jw6pZrBenjJcxxYy67T4V7mLbaxUpUD7GhSNAoqDhYIOBfaqFfLhIVG
         EfPgkzhi/ON6+G+8idU239opwYyQfRhqRcOmBJgK8mdn3pWzWXab2eDVf6k7zwHYF64B
         D2DxPA8sL0BjuOGuNCe835yxgnIIi5NjWMwpw6LDJCTAT26M+3fVTOLEOmPEeybRLPNS
         6GpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773209537; x=1773814337;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uxZRhY5iRDyirvCDrXWUcHCMIwWAOHum4sDVKV6ieUA=;
        b=QwaLZY9wcwsZDLHaW1zDh7JpUBqfeg5eLZf/mmUKwtKzeqiTQvq2RiUhjAYu0+nuyI
         A2DDPE6gXM6CvmBCRSnTQ0mrLXKrlNcBWgKTWs9Aglj7yPRAZQHFLNwZYe4ZRmz9byvv
         /c9AcoazZTOv/wREExDNYJqjuaPwCLdixX0VO/Xr/X1gKHnZq35/MxsojqMwAF0+HbDZ
         Hzj3FTi/J3yBb/lNpqXtKD/99h7xtshOOzDKj/cngfvR8vLEYPekn2wkZCoz3X5z4F1d
         bUC8LQrOnTDPvLnoklP+JIBKxK4sbvXWtPKDRnbWAFTPL22xwgrjzy38EJDwUFNqM0hs
         KABw==
X-Forwarded-Encrypted: i=1; AJvYcCWV5un8GDfPVTkVFtbHfgIkgXsLBHDO+nMEe4YrhW/8hrOglhvuI1Y8TesgJ4oqhL6uv+BHHJOMwrrg@vger.kernel.org
X-Gm-Message-State: AOJu0YzNiByZy62Kn4VogVNb54Bi2Psv9U6wKUE48mXyHOA9K30Jy9Df
	3bActwWVE9ceXgjz0odBaRsxWeDD4P3xJqkrJ5WMc+5ShYYMw3ZlyoQBPTOjyPjaWbNQ3tzFcOk
	D5h99yOUQnEwgFXGxrTJSBXRZVtikhEXCg56yW/Ocpkgin2yyGiePFfE5oYgNnH6O
X-Gm-Gg: ATEYQzwPg6WXOAQa6a0zLiosHnKXYmaYuAR+mdiAK6OuHS9ASUhXjM8Nexf9FumFLeh
	WmxSde3UATx/QHzd0rBwY73511hxIhEK1R3y+1RBIaeYNX+1vKg+Ouc37gr3HMacbTuEhpGydfa
	z65SBNA9JRp0gH3zd7jlyNp5p+gZQORNwuSEPYkM63zvxO9zMGYbJMLhsoAzy52E+cT8Pud41D+
	dKunDUjc4OLxAvDXvGHdlXn0FyiDMGuBDCifn+KCra6DEfHibcGDklcH9Ad75xPIwkMjSnZjEu5
	aKaq1m+4MvuDfN3oTo1opcOnyUepWBiLGfK8HzSl2oG8TfZeEef9nsOoUx6DfP8PZF44GwpbqPo
	ljAdjNlSNwCAft33v9vE=
X-Received: by 2002:a17:90b:3d01:b0:356:35a5:4a64 with SMTP id 98e67ed59e1d1-35a012868eamr1331648a91.4.1773209536238;
        Tue, 10 Mar 2026 23:12:16 -0700 (PDT)
X-Received: by 2002:a17:90b:3d01:b0:356:35a5:4a64 with SMTP id 98e67ed59e1d1-35a012868eamr1331622a91.4.1773209535691;
        Tue, 10 Mar 2026 23:12:15 -0700 (PDT)
Received: from [192.168.1.2] ([2401:4900:88df:edd0:a836:2d6:92a6:a5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02ffdfb7sm1175287a91.14.2026.03.10.23.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 23:12:15 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
        p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        christian.bruel@foss.st.com, shradha.t@samsung.com,
        krishna.chundru@oss.qualcomm.com, thippeswamy.havalige@amd.com,
        inochiama@gmail.com, Frank.li@nxp.com,
        zhangsenchuan@eswincomputing.com
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
        pinkesh.vaghela@einfochips.com, ouyanghui@eswincomputing.com
In-Reply-To: <20260227111536.1940-1-zhangsenchuan@eswincomputing.com>
References: <20260227111536.1940-1-zhangsenchuan@eswincomputing.com>
Subject: Re: [PATCH v11 0/2] Add driver support for Eswin EIC7700 SoC PCIe
 controller
Message-Id: <177320952799.15366.7679761469929073093.b4-ty@kernel.org>
Date: Wed, 11 Mar 2026 11:42:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b107c1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=h4SL0BZ7AAAA:8 a=GM8G9jC1lcraCpjxISAA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=Cfupvnr7wbb3QRzVG_cV:22
X-Proofpoint-GUID: ihpNdVTkedKbRRUpO099T0vHNrLQJ5za
X-Proofpoint-ORIG-GUID: ihpNdVTkedKbRRUpO099T0vHNrLQJ5za
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA1MSBTYWx0ZWRfXy2Dz/qxsymn3
 hjnml9V91LpnkiNf3IUzCRGiIo6iOtz0wPjl70YSYnQD8HVdS6eIbS4QSIzOUTFfCWwy3Wjope6
 jlnJm89xC5C7rlKnp3IparQcmGrDyi2yTOc/5ZfdXU38aIcWW3XlsYkCtzjBYPtH0H1N5vzYhUa
 UIxKJduPzRtEyMW50Hl7j0XMNvPz3S3OD8lbQsAWsOtBiTKhMuC2NvCe5JY8ahUrnMo0+jcTxhh
 gQ7nBPloJECkoE5N4qb/yqhV/tx5tR6ThFlz3EkP8oDS0IMLUAbxr0fqXOQCJkRUt/Bp/KKS9+T
 MZ9w3lXR33PB9GhnXzknE/JgJTxpWvEJBYuwkQ/flKHmJAUgUKNf4qVBvjxt+Nra0QMsuZazkN9
 I+Gz3Wlo7o4tAlN4CsSeXGN+ETaIT8f2QIrDUVl/+rydkJzeojTnIA5W3FBsnkHdiR1dL/3U0yu
 oSoZ9FGFOcD2iPnng5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110051
X-Rspamd-Queue-Id: DB7AB25CB4E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[google.com,kernel.org,pengutronix.de,vger.kernel.org,foss.st.com,samsung.com,oss.qualcomm.com,amd.com,gmail.com,nxp.com,eswincomputing.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273847-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,eswincomputing.com:email];
	RCPT_COUNT_TWELVE(0.00)[21];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Fri, 27 Feb 2026 19:15:36 +0800, zhangsenchuan@eswincomputing.com wrote:
> From: Senchuan Zhang <zhangsenchuan@eswincomputing.com>
> 
> Changes in v11:
> - Updates: eswin,eic7700-pcie.yaml
>   - None
> 
> - Updates: pcie-eic7700.c
>   - Add ".data = &eic7700_data" and ".pme_turn_off" callback, set
>     skip_l23_ready in eic7700_pcie_pme_turn_off API, because the EIC7700
>     SoC lacks hardware support for the L2/L3 low-power link states.
>   - Reuse the dw_pcie_{suspend/resume}_noirq APIs, depend on commit [1].
> - Link to V10: https://lore.kernel.org/all/20260129092629.1866-1-zhangsenchuan@eswincomputing.com/
> - Link to: https://lore.kernel.org/linux-pci/20260226133951.296743-1-mani@kernel.org/ [1]
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: PCI: eic7700: Add Eswin PCIe host controller
      commit: 7e8d4b3d0b1b05c3c09f54a14c8da6f21bf2c852
[2/2] PCI: eic7700: Add Eswin PCIe host controller driver
      commit: 7a129ac6e31bc0c6d7149fd9c7c78bba7d0e9e42

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


