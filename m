Return-Path: <devicetree+bounces-140682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9512DA1B045
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 07:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02B8F3AD603
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 06:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C081D95A9;
	Fri, 24 Jan 2025 06:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Px4YBk9W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833C91D88B4
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 06:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737699230; cv=none; b=ObaARQ2t35wq4w4Hpn+ii8uG1p2e/sqRpPw5c3EiHR/HwWo8zYv5aaSpz6l0Vz7s09TQ0Hkb0IrG/vagO+YtJ7/UZv/ONCzgmXj6Rpeh3gn37wea+nP9GQsQbbarHoFaka/0Mwlehsnm9mEbmmfovkkGZBymUcwqPKZaeeaRBY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737699230; c=relaxed/simple;
	bh=YFp2Z+t7xRk8x6Kl4lGeCcICjLIDtCSj1ebVoHWStQ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=el+VLSaL4lZkAt6Ig+hOZ7PONnJsZA113YyCm3vTRLEM/qj+RJtpi8hCsHA0GVqLzQaX96MVN2OeF9NqTqxrfGUyrqpL6p8XVNGxfpsEw2Y3J6PB6PLEXlXetafYpxO/ck/jcBVmMtKsgsnFu6N8t0+usR/ILK28en1ezdAciyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Px4YBk9W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50O3Jb2M029194
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 05:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pBPYiLdDRBIgHv762UtSJ+rwIwHEn2m5Ux7Jpgicu1A=; b=Px4YBk9WlcwPI82I
	lRe6/pRpKzevtY4sqsHQFpRb8Z9kE2oPHAA+M458Rn04sg/oPQsP8OxxxZFNl2nB
	OmDdPG1XBds6qdS+GYKuxpsLBRQzOoCvVDZ3EgnEfQffCHFvMbKGvNOFe4Lrl42m
	Y6nvmdOfYwAgayCjG6+X/5s3TwUdIajJGD4Amm3zkMymSfr8Cg3HzrGCuk4YyKmd
	EJBfI+aBiSXpOrlxh9hc+6+NjIREkJYkyb6xVlN6wFK6SJijepLdZTu8jMAFdN4Z
	Vj2jGOF40EtrBdFUHK+sYOSR2vNGYDZ6NuwrozpkvUBEtc/w3Fqcxv2R/bP+h8sM
	/XJX8Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44c2uj894p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 05:53:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2165433e229so34880595ad.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 21:53:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737697987; x=1738302787;
        h=content-transfer-encoding:in-reply-to:cc:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pBPYiLdDRBIgHv762UtSJ+rwIwHEn2m5Ux7Jpgicu1A=;
        b=mDTuHnDI/f4LvASYTldOMnHDuaMF82YNk9B4Vynclo4bG2tVqwcBeD16GNP0GJhH7S
         xSIHf3y49RbF0TfvxuS6HuDhYb31PVe4w55w+teNDnfL3L7VuAMFWE61P6q7mqA2D6PG
         HMEYCZAw/VJEiuxouPXvQy0PcdLsey+gviGzhad7RMUFgd/PYq/0A1jEYQsmF6pgMgT4
         BlmLQZJ8hMHLB+MFnABhH/ZiAr1NG/TG8LctofutIYXkXIqPbcnI1oC+9n3ZNzXfzLpo
         MA9hRk4BkBAFTt675AGb57zLV3gYxIUyLUgT1Yg90YNe8Xpnd/XWY/2woGVTgF3nasyr
         4Y3w==
X-Forwarded-Encrypted: i=1; AJvYcCUlw06L4I6d9FuzlejCdFyL82cpftch6C9m0CTBZVlf2Omp09DnN+8qZgowX+dsYAYSDbeIdnmM6N9S@vger.kernel.org
X-Gm-Message-State: AOJu0YxXHl2/WxU9o9C4b28y3EhRNH1XlqCPiim4WgeUVZKUKZJp/F9O
	irh+YSb5DMmBU/5SPVZfD1EjobB/fmXD8Tjp0tuRrHAH4wDVWEEOJx3YoxRtg22p4iECt3/4z8X
	sdLlBZNhCHE7qCd2GVB5vm8bp7Jw5tXpQZ7VZA6aB5ZUe4fjvoN/I0A1eEejzmLMzEm/h
X-Gm-Gg: ASbGncsaJXb9/rpp6M66lX4gkL/Yzml8bog5QZJGRCusiRptAEhLhavn3qGIsDrTJK5
	GxHlsiQwk9a1JkPkndbP2OmlT0U2Kcb/D/D1djNeEznQPJlDm5ADXOp33r9FtngERm7EZl17DTh
	y0METfLEWWrD6JUfZpfBTU0O2mCM8ho+nS8NbtNZxfQ4RbEy0oOc0bM+XHXAqaGzp/QT8KjgWiq
	LZVpGlveyqs2T0nxR1l3jeYCjBre4X/99D1j3BhhDRNIu9f/JELan5v94MpF7g/mVZpUu5+w0DN
	p7gEmpSmjnKHzzckv4AG0r/q8vg4oe4=
X-Received: by 2002:a17:902:db11:b0:216:6283:5a8c with SMTP id d9443c01a7336-21c355bac6amr396498775ad.39.1737697987326;
        Thu, 23 Jan 2025 21:53:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYAFMYrY3EVMSXVYrxo+bvXExncjT3+v/7gOAOzdbB00h/JmBc+AibN1Dw5PqcIQM/o4Opsg==
X-Received: by 2002:a17:902:db11:b0:216:6283:5a8c with SMTP id d9443c01a7336-21c355bac6amr396498425ad.39.1737697986895;
        Thu, 23 Jan 2025 21:53:06 -0800 (PST)
Received: from [10.81.24.74] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da424e85esm8354345ad.250.2025.01.23.21.53.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 21:53:06 -0800 (PST)
Message-ID: <02396f29-5d1c-4595-8c31-c67cf70fdffe@oss.qualcomm.com>
Date: Thu, 23 Jan 2025 21:53:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 0/2] mailbox: tmel-qmp: Introduce QCOM TMEL QMP mailbox
 driver
To: Sricharan R <quic_srichara@quicinc.com>, jassisinghbrar@gmail.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, manivannan.sadhasivam@linaro.org,
        dmitry.baryshkov@linaro.org
References: <20241231054900.2144961-1-quic_srichara@quicinc.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
Cc: Aditya Kumar Singh <aditya.kumar.singh@oss.qualcomm.com>
In-Reply-To: <20241231054900.2144961-1-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: hQwkXhpAAwdwmLiM4T7vv8nUR4JI9ee2
X-Proofpoint-GUID: hQwkXhpAAwdwmLiM4T7vv8nUR4JI9ee2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_02,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 mlxscore=0 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501240040

On 12/30/24 21:48, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> The QMP mailbox is the primary means of communication between TME-L SS
> and other subsystem on the SoC. A dedicated pair of inbound and outbound
> mailboxes is implemented for each subsystem/external execution environment
> which needs to communicate with TME-L for security services. The inbound
> mailboxes are used to send IPC requests to TME-L, which are then processed
> by TME-L firmware and accordingly the responses are sent to the requestor
> via outbound mailboxes.
> 
> It is an IPC transport protocol which is light weight and supports
> a subset of API's. It handles link initialization, negotiation,
> establishment and communication across client(APPSS/BTSS/AUDIOSS)
> and server(TME-L SS).
> 
>    -----------------------------------------------       ---------------------------------------------------
>   |                                              |       |                                                 |
>   |                 SOC  CLIENT                  | SOC   |                TME-L  SS                        |
>   |                                              | AHB   |                                                 |
>   |     ----------    ---------   ---------      |       | ------    -------     --------    ------------  |
>   |     |        |    |       |   |       |      | WO    | |     | R |     |     |      |    |SERVICES   | |
>   |     | APPS   |<-->| TMEL  |<->|       |------------->| | IN  |-->|     |     | TMEL |    |--------   | |
>   |     |        |    | COM   |   | QMP   |      | RO    | |     | W | QMP |<--->| COM  |<-->| a) ATTEST | |
>   |     |        |    |       |   |       |<-------------| | OUT |<--|     |     |      |    | b) CRYPTO | |
>   |     |        |    |       |   |       |      |       | |     |   |     |     |      |    | .. more   | |
>   |     ---------     ---------   ---------      |       | ------    -------     -------     ------------  |
>   |                                              |       |                                                 |
>    -----------------------------------------------       --------------------------------------------------
> 
> TME-L SS provides different kinds of services like secureboot, remote image authentication,
> key management, crypto, OEM provisioning etc. This patch adds support for remote image
> authentication. Support for rest of the services can be added.
> 
> Remote proc driver subscribes to this mailbox and uses the mbox_send_message to use
> TME-L to securely authenticate/teardown the images.
> 
> Since clients like same rproc driver use SCM/TMEL across socs, the goal here was to abstract the
> TMEL-QMP SS functionality, so that clients should be able to connect and send messages with
> a common API.
> 
> [v1] RFC Post
> 
> [v2]
>      Added HW description in the bindings patch.
>      Fixed review comments for bindings from Krzysztof and Dmitry
>      Changed patch#2 driver to add work for mailbox tx processing    
>      Cleaned up patch#2 for some checkpatch warnings.
>      There are some checkpatch [CHECK] like below, which looks like false positive.
> 
> 	CHECK: Macro argument 'm' may be better as '(m)' to avoid precedence issues
> 	#1072: FILE: include/linux/mailbox/tmelcom-qmp.h:40:
> 	+#define TMEL_MSG_UID_CREATE(m, a)      ((u32)(((m & 0xff) << 8) | (a & 0xff)))
> 
> 
> Sricharan Ramabadhran (2):
>   dt-bindings: mailbox: Document qcom,tmel-qmp
>   mailbox: tmelite-qmp: Introduce TMEL QMP mailbox driver
> 
>  .../bindings/mailbox/qcom,tmelite-qmp.yaml    |  65 ++
>  drivers/mailbox/Kconfig                       |   7 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/qcom-tmel-qmp.c               | 969 ++++++++++++++++++
>  include/linux/mailbox/tmelcom-qmp.h           | 157 +++
>  5 files changed, 1200 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/qcom,tmelite-qmp.yaml
>  create mode 100644 drivers/mailbox/qcom-tmel-qmp.c
>  create mode 100644 include/linux/mailbox/tmelcom-qmp.h
> 

This series was listed as a prerequisite for a WLAN patch I'm
reviewing, and when I used my WLAN automation to pull into my
workspace the following issues were flagged.

From kernel-doc:
drivers/mailbox/qcom-tmel-qmp.c:153: warning: Function parameter or struct member 'qwork' not described in 'qmp_device'
drivers/mailbox/qcom-tmel-qmp.c:153: warning: Function parameter or struct member 'data' not described in 'qmp_device'
drivers/mailbox/qcom-tmel-qmp.c:153: warning: Function parameter or struct member 'ch_in_use' not described in 'qmp_device'
drivers/mailbox/qcom-tmel-qmp.c:304: warning: Function parameter or struct member 'mdev' not described in 'qmp_send_data'
drivers/mailbox/qcom-tmel-qmp.c:304: warning: Excess function parameter 'chan' description in 'qmp_send_data'
drivers/mailbox/qcom-tmel-qmp.c:394: warning: Function parameter or struct member 'mdev' not described in 'qmp_recv_data'
drivers/mailbox/qcom-tmel-qmp.c:394: warning: Excess function parameter 'mbox' description in 'qmp_recv_data'
drivers/mailbox/qcom-tmel-qmp.c:438: warning: Function parameter or struct member 'mdev' not described in 'qmp_rx'
drivers/mailbox/qcom-tmel-qmp.c:438: warning: Excess function parameter 'mbox' description in 'qmp_rx'
drivers/mailbox/qcom-tmel-qmp.c:859: warning: No description found for return value of 'tmel_qmp_mbox_of_xlate'
10 warnings as Errors

From checkpatch --codespell:
1d333d61d25de60704447c9b2dbee165927696d3:16: WARNING:TYPO_SPELLING: 'requestor' may be misspelled - perhaps 'requester'?
1d333d61d25de60704447c9b2dbee165927696d3:76: WARNING:TYPO_SPELLING: 'requestor' may be misspelled - perhaps 'requester'?
total: 0 errors, 2 warnings, 65 lines checked
cb1085a6ed62b0d1c7400ff9257490e431afe7b0:313: WARNING:TYPO_SPELLING: 'initated' may be misspelled - perhaps 'initiated'?
cb1085a6ed62b0d1c7400ff9257490e431afe7b0:316: WARNING:TYPO_SPELLING: 'succes' may be misspelled - perhaps 'success'?
cb1085a6ed62b0d1c7400ff9257490e431afe7b0:357: WARNING:TYPO_SPELLING: 'succes' may be misspelled - perhaps 'success'?
cb1085a6ed62b0d1c7400ff9257490e431afe7b0:910: WARNING:TYPO_SPELLING: 'controlls' may be misspelled - perhaps 'controls'?
total: 0 errors, 4 warnings, 1144 lines checked

/jeff



