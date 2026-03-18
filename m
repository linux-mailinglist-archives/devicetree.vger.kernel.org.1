Return-Path: <devicetree+bounces-277249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHF5BYuwumkSawIAu9opvQ
	(envelope-from <devicetree+bounces-277249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:02:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4214B2BC8E1
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EABEC309238A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49103E51F4;
	Wed, 18 Mar 2026 13:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S93uzHmT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08FC3DA7C2;
	Wed, 18 Mar 2026 13:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841870; cv=none; b=sPsMbnDdSd7v3rXcKD97d67OmEzcdpOA43WMNooQ7HEKvfdzBeLwmbUB/PJ6oukIis2B8DtaC1kJZ1rWH50MdXQqewVwX+Sl+SobPGu/GwldhDa5u7vEHC2Za0DRCpp40zIUMelij151YRymPMQT2FQ+tn+dEXZu6OfE8ekeicc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841870; c=relaxed/simple;
	bh=gD9nbt78bZYgWRepOu1IlyIjfys3b3SOygyWUpdoP9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oSJbsv4TdT4A6EDQIJm8TklngyOBOM2Xa17HSmbQ83+nfqfprvUnA6QmdfkCKFDqJFqm8GXFigxnSTF5WFntWMJDI88TWGMSrR31RD2mQsIZWn8Vt3evGHd/tDOtw9bAyq8TIKnMDkzwaCmDjWByQTfDNKcmnRpfNvtSECPD7XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S93uzHmT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCE44C2BC87;
	Wed, 18 Mar 2026 13:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773841870;
	bh=gD9nbt78bZYgWRepOu1IlyIjfys3b3SOygyWUpdoP9Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=S93uzHmTUJp2oQM2laCtTOZR8IrXKrso/QTX33iQYVzDYpX5gj74cNDEG0lKbYVVa
	 P1Cym/HjVWxtjDz+hKuesaLL+l7MuFHtNUzdy2mzyHWNyxu3pYZ8yhxcQ+fNuwl62J
	 dBdfMJZlLs/1BHl+W0nIsDLJNDnCzIpWGRoQU2razzTtMi2qSXVrOj6cCRaWqCHRti
	 urug2jN8D7tddb6xtASQNNbbbK5tsfZz1Ndi39B5hUKEj4cBZH6ID7Rxs7MOTgU2KH
	 ykvL81jHqf5Y/GvlwfvIAwGiouz7Pk04QSlDilgDjfMqmnSFB3NI25LLHBhZnnsdR9
	 RE3OQnCLVRnsw==
From: Bjorn Andersson <andersson@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: sudeep.holla@kernel.org,
	angelogioacchino.delregno@collabora.com,
	viresh.kumar@linaro.org,
	neil.armstrong@linaro.org,
	festevam@gmail.com,
	Frank.Li@nxp.com,
	danila@jiaxyga.com,
	lpieralisi@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	tengfei.fan@oss.qualcomm.com,
	jingyi.wang@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/2] dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
Date: Wed, 18 Mar 2026 08:50:23 -0500
Message-ID: <177384182871.14526.11730807290892395572.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
References: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277249-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quicinc.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4214B2BC8E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 13 Mar 2026 16:04:37 +0530, Sibi Sankar wrote:
> From: Sibi Sankar <quic_sibis@quicinc.com>
> 
> The generic Qualcomm Oryon CPU compatible documented in the binding
> doesn't account for differences between core types and has been
> deprecated. Introduce core-specific compatibles, based on MIDR part and
> variant numbers as listed below.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: cpus: Extend Qualcomm Oryon compatibles
      commit: 96e71f817b02caedbbaeffc916010ba68802612f
[2/2] arm64: dts: qcom: glymur: Fix deprecated cpu compatibles
      commit: 5044a0b0307a3377dabbb0a2a653a30e388d16cc

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

