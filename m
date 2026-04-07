Return-Path: <devicetree+bounces-285166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ED7zBIe61GnQwgcAu9opvQ
	(envelope-from <devicetree+bounces-285166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:04:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7373AB141
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A17C230056CC
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 08:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2C63A3E87;
	Tue,  7 Apr 2026 08:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OU/mkJwN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE843A3E7B;
	Tue,  7 Apr 2026 08:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775549049; cv=none; b=gES5fF5eeL8hCGiCjNOBcgSVtIfSSYHfeHr4KhyBrlKTlOpMhTS670L1N3vzW82uIrbRBOGa7ABFQ1u95H1czy1WdMBrng4Fd1LSmej/Z6mj60DHtiopdbptP7OUH2S1wZzmDYyyJioIVP0DfBuKP75vJH9r7ZO7bophKd3uJss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775549049; c=relaxed/simple;
	bh=e03XGAle/eVycpn3gM3R8Pwurq83UH6v/CkIFozz1/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C8rhkH03qzPPxjWI8nGdv3nrjrpW+CVzaOkDrjeCFkkxLhoi8oJHooOrQJNV/IfZg1q5dQ56JftrMQW86G30wMUJd2CICH2p+4ZhmiMGeDzGkyVmIKrMJF1qWY4XsCjHeNOkNshyNOAnprO20w82IexOtvb/t4QJDBfVzDfPXiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OU/mkJwN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 030E5C116C6;
	Tue,  7 Apr 2026 08:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775549048;
	bh=e03XGAle/eVycpn3gM3R8Pwurq83UH6v/CkIFozz1/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OU/mkJwNXfxxvGzVeq7vO1EsXwqMFe1jkj4rKCH4zwoyB+tBaKHrLwgE7rAMp7bpJ
	 jrLCuED+PdSz8PdZTvk3hmMVTNEFLbGCCN91OsIbSEh2IzO73pZ8MQRsaZcWqV0Avt
	 UGnnQwIKWrzyNn9omXJFifwv2emyWaOlu1vq+PS6v/1FnB1j5ZYITcF+Kus5n2F1UA
	 0cIZAZ44id2pRhnWThhmR3Ea8znD+Ms0wdY6JxkK3VL3R2KqKIoJFs8kevnJtJQIHr
	 wpwahhCZ6POHIq+Zgu3EywUt2W6UfIP5RtC6VAOI9VrnTR0axrIIvppyb7UqdgxGTG
	 Kfe5xUKjct/lg==
Date: Tue, 7 Apr 2026 10:04:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexander Koskovich <akoskovich@pm.me>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Bryan O'Donoghue <bod@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: media: qcom,milos-iris: Add Milos video
 codec
Message-ID: <20260407-mamba-of-algebraic-wealth-8928cc@quoll>
References: <20260406-milos-iris-v1-0-17ed0167ba6f@pm.me>
 <20260406-milos-iris-v1-1-17ed0167ba6f@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260406-milos-iris-v1-1-17ed0167ba6f@pm.me>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285166-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:email]
X-Rspamd-Queue-Id: 6A7373AB141
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 06, 2026 at 10:19:34AM +0000, Alexander Koskovich wrote:
> Add binding for Qualcomm Milos Iris video codec.
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
>  .../devicetree/bindings/media/qcom,milos-iris.yaml | 166 +++++++++++++++++++++
>  1 file changed, 166 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


