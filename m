Return-Path: <devicetree+bounces-249412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A289ACDBAEA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EF11300F9D1
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D0A32E126;
	Wed, 24 Dec 2025 08:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ztuwrr25";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="blVSsJEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297CF298987
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766565373; cv=none; b=LAWt/Wc17ZC/A6D43zWS48SpiWEYhx5d1Uyz8R9JtKDvWQlA3AmC8D6ao8rYKkejdy1w4cLz3fnbBXH0wivRsnoDoFLeRHrIvNZ1+fnLcxgU1dlJIU6TDnTA05iAGtHxF0dxIgfBHFpvxxIlkyeXAaQBuxXqJsZe8w+D8CYzxoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766565373; c=relaxed/simple;
	bh=XHBKHnnZEzYTkHB9JgONtynkb7j/32ppr/tKZ5hBlJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q+1P3nmykjQWbeixiVtBHpJ7+iWTCi2gtUw8ZYJ9x+6L1zdlGXgHEOzLloQVmzS2vy/7EF/aKPUBoi0wNtOVCX3fJzrk2YH0/w7NT9k3NfMGcu7gPw6npop32CHsrGrxcE+dFPf1dipVo4tRB+tlWmFemnGgn4ZvP1Pxwv9S6F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ztuwrr25; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=blVSsJEQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO17Ssl1597726
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RXs5FzhQAnjXR+6G2SMJXmif
	FDe24dqHV2KRrcnEULI=; b=Ztuwrr25dhrVv1BahCWqZ4PWU79t7OLCj7sPKsKS
	s6LzElpfZtKQllwJjYmTpsftcyDT6MMxsvP+MFdP0UDeHfzza3WFQQ7JlkDLdhZe
	gncfFbZTzUx49MhytU1jexTV6rgTo6c7xkthFVvWtAFfe6CKpGrhyssN9ME5g8Eq
	NeY4tTsHQ9egs0YpZKG+YwDhu+g2xK0Nsu7ge0ZbhZjdkwBFQoLERQJe6Lms7I/k
	OnHboSHqq0Kd4C3Gb6Y819JOzoMFK00VKQ1GihNGLu1adUhvImql78NBuatLQYdE
	eMXa8tZLEu0mqc27iUeIJTUJMEaqLGqeZy6cZorXAEiN8w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8683h1au-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:36:11 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0a0bad5dfso120231825ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766565371; x=1767170171; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RXs5FzhQAnjXR+6G2SMJXmifFDe24dqHV2KRrcnEULI=;
        b=blVSsJEQ/csGRapYK9D3GWKmN+XVleDQsxUyGS6VFK7N0bKp/cPzKpNQ4ogILik/Pt
         vd5ZDQokgWAPq/aK5uh6UbGDAAwa0qbgRf8Zuf1qsr4N+8FTv+MXQlWQU5KBaZbVKP00
         qtxzf7Tb/0DB5WdtXeRXTqPxkbE/30Cvw7OGyUEOb5Rh1YEsvbScRFTvGlM/gI3uT+xh
         yAimUxj0m+GiRj/F6K5Vtq88/d+MKkP7bMVdgc0sJ6NS2IewEYgDFF1ZjgicHGsWEX9M
         1ar61bIBXN/oUQ3XcLxaSIIt0SB5z7PyLDUzTaDbGi6YDNnQ2d1g2lwxdyM+JMw+2a0J
         jF5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766565371; x=1767170171;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RXs5FzhQAnjXR+6G2SMJXmifFDe24dqHV2KRrcnEULI=;
        b=XXW1JqO+dKbBlMfgZoRMqDLNtf6PLKdz3f/lwNQaJ1vSH+BQX0mHO6zDBjKoiyJ9rB
         8z2J1+6tMuaWHVlp6BCON7oqfvFvMtjIZzm7Nj7LPwt/gqSqy1COdLX7tyTdIEZrF2z3
         gPagvJ1rQfyi9aRozFm96fcEn6RZVnHROtVwqfFtBn2z0F63ordQOIdhIk3zCMUXaMwc
         uujxn0n8TrqD4oALh9FAMEM0/Ts8aTosUef+ztLq2+Kew4B5YAbbZy7i9GEPmLVvfiwO
         BSoGsVF322nl769PF73P1G31HG8kb/StM59FwjCZtVfVOiKi1KF2TTg0j5sFBuKv2+Ki
         TrMA==
X-Forwarded-Encrypted: i=1; AJvYcCWiRpsvv+lRlL3c3duOHta3EDNLSCtp4wtRAO96ggMkmT5YUbpjhPDZP6e53A9fcvmIWx4ZV2Fzp2rN@vger.kernel.org
X-Gm-Message-State: AOJu0YwIflhEI/uqXsTxtWn30mD3ucKSu9yXSqYsMebrwyerqXmQH7K2
	gEHQTXS4UbMd2ir7ys+NpB2SOWxsR+Ym5Gcsmq1BCxkJIMKShc3vhrHvVZjwZryM8jkZNPe4MrQ
	kXC6lwKXg1XNrEhGZj3xIBIG+Ye0X0E7uViE1FYyyvNFlO62sDiKtC/JYSk7tUwcu
X-Gm-Gg: AY/fxX7lnnyIkekJMHMlDtvjvXv+jkpX3Bil4XbaGcPkdqWa6YCLbr1Veq0A26Me4P3
	AvRJWAO4ssaor4C9Tynot4V6/ukZ/TrnDOeilcdxjZrO8L8BJyL50U77ZrRmfTTvp+c1sr44yQa
	E8k9vZTYYhnd7FBA0HrLhorwAAfxZ26CJkndierwuVEJnxz4nD/5IX/WZd6yowcZZiGRZmnC1Nf
	H5CPRKePZhQbF8AomBQ3G8npbJhP/Pr2TORbWcbQZcyKg7RrI70r08LQlT6WIPTN1ilXn83jU/o
	OV1kcN3rZXnsQIyAymwt4lmYArmuS00dX6YRwkTx5UQEu2NxhgO5/j7FuDDywxLdn1B5c8a/1wG
	9NUev8BdJifM2vmUeyOa6lGb9gqOin57mnmk6NO17/+ASmSs=
X-Received: by 2002:a17:903:3d05:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a2f2a507bfmr172625475ad.44.1766565370778;
        Wed, 24 Dec 2025 00:36:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMl17mBi0hsdESnNqw35un/TKkSfrxWaGopzD3e4rHFh18vvSMKpYB3p8rKQZ/Rn4836ZOqQ==
X-Received: by 2002:a17:903:3d05:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a2f2a507bfmr172625195ad.44.1766565370347;
        Wed, 24 Dec 2025 00:36:10 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cb30sm151195355ad.66.2025.12.24.00.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 00:36:10 -0800 (PST)
Date: Wed, 24 Dec 2025 14:06:05 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: monaco: add QCrypto node
Message-ID: <aUul9RKw16+JvR9o@hu-arakshit-hyd.qualcomm.com>
References: <20251223-enable-qualcomm-crypto-engine-for-monaco-v2-1-6274c1f6136f@oss.qualcomm.com>
 <ggcuy52ishtss4xcghigxlrkgjoc2ssojdm7xx5chkmdpnp6f4@6guglelys4u4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ggcuy52ishtss4xcghigxlrkgjoc2ssojdm7xx5chkmdpnp6f4@6guglelys4u4>
X-Proofpoint-GUID: i7PjQSCb8fs7snzqbt7xNWJ74Up3mDHn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3NCBTYWx0ZWRfX2isiQhmgnVwW
 4koc0pTz6XHsxXpu0e/ZU3UNTgCjmRaXsZvOnKuzQmKVVnsrOghodOe/vpyFqW/b7GfMPFFzrgB
 NutNEKNzJcIJIaGVStT0Nax4z/bMGZuQGSTA1o15QWreGUfvn5pqpkMn+TMYF/YES1p0dnrOz88
 qj7udHM04tIM5TZnWQAezc0fqpDoNfuT1jr87cxgdMsw9n7Vft3bBo8K3Duj/4jojTnCbtXGRSg
 5Ks83BPzXD7x1WF/NtML+cal3rw5yVrNkoopymoQPokNX8dTeXzoRb3dIBpekmRqvXllmd1Gyg1
 Nbh3DJ+QwQCas5MCJNF3cESDr7BRTRsBFsgx4uamHpYCbMnWauWVExWP0U/Q9Vcx0/ccSp20pAa
 hYsO+2ADvztjY+2CD6YOMuNsrWpLr9k0PKkOOKeguzT4vp+EcXIEMU71mt0bjNfuJpwpo2VKv8+
 DQOdIMZJY3tlURVryvQ==
X-Authority-Analysis: v=2.4 cv=HqV72kTS c=1 sm=1 tr=0 ts=694ba5fb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uPlboWb8i3xBuZE9GFAA:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: i7PjQSCb8fs7snzqbt7xNWJ74Up3mDHn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240074

On Tue, Dec 23, 2025 at 10:23:43PM +0200, Dmitry Baryshkov wrote:
> On Tue, Dec 23, 2025 at 12:25:18PM +0530, Abhinaba Rakshit wrote:
> > Add Qualcomm Crypto Engine device node for Monaco platform.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> > ---
> > QCE and Crypto DMA nodes patch was applied as part of the
> > commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> > however was partially reverted by commit cdc117c40537 ("arm64: dts:
> > qcom: qcs8300: Partially revert "arm64: dts: qcom: qcs8300: add
> > QCrypto nodes"") due to compatible string being miss-matched
> > against schema.
> 
> ^^ This looks like something that should be a part of the commit message.
> 

Sure, understood.
Will post patchset v3 with changes as mentioned.

Abhinaba

