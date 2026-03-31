Return-Path: <devicetree+bounces-282762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIuLN5hEy2miFAYAu9opvQ
	(envelope-from <devicetree+bounces-282762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 05:50:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD6363C34
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 05:50:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 63E50301D6D4
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 03:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AACB28C009;
	Tue, 31 Mar 2026 03:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="g+bwdUni"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449F71A3154;
	Tue, 31 Mar 2026 03:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774929046; cv=none; b=pFPBgGxoF2PcGiYe4aie2BLZuWQfcinBtAN6HHzVkvxhztdBVIi26HsWmF6BDj4NgOmB4QimBR2OjWLLhoay8eYBIR8DqAM/C45kp3C6rH4fpzjTIBXtl1DX2nYfk9mR+x9OMOtgSXjAeAk41CI4wQpwx9Djj8Y4ZsrcMQZdz4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774929046; c=relaxed/simple;
	bh=Efe5XnWG/OpWJhv08em+GufwDXAKHEw16LSuwF8YEh8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=hlS+SiO+t+gIR5DsrwG23sUEAmSwc7kJjqUR/CcCjCiHzLEqVjyqVScDF6dXZnBT9ZUCwielBrNIapAUPALx5TrrLKzB2FJ4dTD+UoLHN2ipSez8yjiGH8/+tyctZNp+DpK+soB5LNmCmoWW69SFmvKDHu1EokzIqC6GVqDYIT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=g+bwdUni; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1774929006;
	bh=nfup3iKpYkhK8d+x8uSGvn1MyKxNMlLsAtOxr9MhuK0=;
	h=Mime-Version:Date:Message-Id:Subject:From:To;
	b=g+bwdUniqjxkX5n2mcI5Z1Uc4zxeVsuY4lYjcBsdykOLDeZ6TSiTDEOsOKjUaXmpR
	 p7qpyRJZaGfDSv1vDFfKa+Z+wgUmu2meiU13z/ARjH5cqacQqeszVFrpWtx69vTVjV
	 aNTpZ/CD/HDxbcPmRFegN7jZATnGFWA6FBuMzxvA=
X-QQ-mid: esmtpgz10t1774929003t498334ad
X-QQ-Originating-IP: 6kW2nALZDb10PK+zd3IzzRDVIcn4KN8bG8hDGmXBpqc=
Received: from = ( [183.48.246.138])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 31 Mar 2026 11:50:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7101099967736888948
EX-QQ-RecipientCnt: 19
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 31 Mar 2026 11:50:00 +0800
Message-Id: <DHGNTIG3VCU4.M3GUX7KRKY18@linux.spacemit.com>
Cc: "Emil Renner Berthing" <kernel@esmil.dk>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Yixun Lan"
 <dlan@kernel.org>, "Paul Walmsley" <paul.walmsley@sifive.com>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>,
 "Heinrich Schuchardt" <heinrich.schuchardt@canonical.com>, "Troy Mitchell"
 <troy.mitchell@linux.spacemit.com>, "Michael Opdenacker"
 <michael.opdenacker@rootcommit.com>, "Guodong Xu" <guodong@riscstar.com>,
 "Hendrik Hamerlinck" <hendrik.hamerlinck@hammernet.be>, "Yangyu Chen"
 <cyy@cyyself.name>, <spacemit@lists.linux.dev>,
 <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 2/2] riscv: dts: spacemit: add DeepComputing FML13V05
 board device tree
From: "Troy Mitchell" <troy.mitchell@linux.spacemit.com>
To: "Sandie Cao" <sandie.cao@deepcomputing.io>, "Conor Dooley"
 <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260331034423.67142-1-sandie.cao@deepcomputing.io>
 <20260331034616.67183-1-sandie.cao@deepcomputing.io>
In-Reply-To: <20260331034616.67183-1-sandie.cao@deepcomputing.io>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz3a-0
X-QQ-XMAILINFO: OO2wLqYBHUeBkHIOXYrIR8eJqn6tGnVnrVwN17eIoFLk7JVkkPcjBOU2
	fVESFeFPu1tlD6V/RlmVasi6+Nm8y9y1y47Rmyb4RVAXVHYW8V/prTqt/vgOw80bf6LtXuM
	lJmmZnQxvy+1XdwZayb9qEqq18CoyJguAl+Ru6KbVBP9wBJRBUDC6IWjYm4OD/M7ry6/VUa
	ERpkU5EcrPd1P8B7T0w23k7nXiaIXkQl9G8l+X6NM7KMiLqs94z1FR2MnPhjySiA+cQWQN/
	3lFXm0gPdjjGb19wMlTY3FYIp0Gyh8/NCc27fPjblGPKOtWaBhwJBTLPQcwfzVrmMFM0iII
	3QYmOYZiZ64Wg+9dKnZdCY72ErAH96/Np9CDU2qRN+la553yKJO70/MjcFTU3JQ4aGi/N1p
	olEQVInXXjuovOiOxcJW8XWxatsxDr4Y1ej5IY/keQz2j8UtEkZfpnUpQKuLFIu1d5p3nRu
	4OLOKkLyp/q2duUFcX8rW11dgNbH6aFFoydCgZzN2xqNSx3D1fkvQHHhJm5IM5MRmFxVvA0
	nn+N+dsfux0GkZmWEqvCuc1R1qCFgllUTXKwMBTi32TYEoEZQ85+fOEyC3zmtvHmC+DkzVO
	puifN+FBr9x46tUofFLaumcT1UvAv40Wzt9HUBBdyGIuXeeddPxZE3MmGrdi4iOaA7lnmbf
	omDQsqWRFy7psFrA/eadMlz54vBFJNZ0IU/kKKP6QFFHZnmPTZyRTpEn6Me3RBznvpzTCfN
	iN8xPsiLKwj93COU1Hjvph8MBeFa8mTrYBFUiA0CABVkpTckI9RW052cfnYviw55o1uRSXJ
	SRpZWmfxu4/O/3p4NLRpUqWPfeZSGJCEXUh/axGoUG3C1mOc7nAs1spxOzyNteEy335lK0u
	fD4Ijcv+QkcgT4vzNQMr+YURnB9p+XD4kl62Tyl71FQkJppKgB9fD6QtoL3mP8T3yBWoC68
	CW51omVqdx1Me5Mx7jcSSJedRKLksftYRQBlctA1B9gZFLY+4zq4EnRGxvcu76AyZbHnfA4
	6vXE45PLJHAxnrRosxCRXldVT/Ynp1rRFqZn5ZVzFsq4cdW4zNLlu+5W1URk7gYWMiQmME2
	VFDxhcevNnc
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-RECHKSPAM: 0
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282762-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[spacemit.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[troy.mitchell@linux.spacemit.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,canonical.com:email,deepcomputing.io:email,soc.it:url,60hz:email,spacemit.com:email]
X-Rspamd-Queue-Id: 02FD6363C34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Mar 31, 2026 at 11:46 AM CST, Sandie Cao wrote:
> From: sandiecao <sandie.cao@deepcomputing.io>
>
> The FML13V05 board from DeepComputing incorporates a SpacemiT K3 RISC-V
> SoC.It is a mainboard designed for the Framework Laptop 13 Chassis,
> which has (Framework) SKU FRANHQ0001.
>
> The FML13V05 board features:
> - SpacemiT K3 RISC-V SoC
> - LPDDR5 16GB or 32GB
> - eMMC 32GB ~128GB (Optional)
> - UFS 3.1 256G (Optional)
> - QSPI Flash
> - MicroSD Slot
> - PCIe-based Wi-Fi
> - 4 USB-C Ports
>  - Port 1: PD 3.0 (65W Max), USB 3.2 Gen 1
>  - Port 2: PD 3.0 (65W Max), USB 3.2 Gen 1, DP 1.4 (4K@60Hz)
>  - Port 3 & 4: USB 3.2 Gen 1
>
> This minimal device tree enables booting into a serial console with UART
> output.
>
> Signed-off-by: sandiecao <sandie.cao@deepcomputing.io>
> Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>

