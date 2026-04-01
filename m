Return-Path: <devicetree+bounces-283282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKL9JNK9zGl3WQYAu9opvQ
	(envelope-from <devicetree+bounces-283282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 08:40:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF0C3754EC
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 08:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9E84E30131E9
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 06:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 635BC3370E3;
	Wed,  1 Apr 2026 06:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdOmBH30"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C18B3126DF;
	Wed,  1 Apr 2026 06:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775025613; cv=none; b=Y1/ctT95w3xPFOk6B8Rzw7vsXk1F2fb4P/UO3NL2/s4WJ3zrJR76+DFMhGYJRv0kBstK18wipMHM2B/1Zb0H2ba4clYRI3nW8v/x6qAqEQKygHKqsHtfZDovh+/0cNiS2RjDJB55+/g60ALJTvoBFs2RJC32yWBroCw0a9PJLO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775025613; c=relaxed/simple;
	bh=+cxshQa0PJoHqWtXPlTCUp0KZvbNQJ4m1DCFEL3Tv4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Var5cdga8qQ8DoeskP1XHLCE4jf+Hz6Au4cusvJf5kSrRlLYus5kjMBcPWf7e7NUiF9ELWLo44zbuGxGI8QOsOtyNdZIApiOZugRMBizFxjVxBBvOJfrU6M7ezb6XZ4olLsLsssv5ULaN3f5XVgx65DdeYS0VzDRPvI2XydwnR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdOmBH30; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B2D5C4CEF7;
	Wed,  1 Apr 2026 06:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775025613;
	bh=+cxshQa0PJoHqWtXPlTCUp0KZvbNQJ4m1DCFEL3Tv4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XdOmBH30XewGUd5x9uhvj6874fDyCpaEq5I+6ZSXv4CKfwSHVgAcQDmeVg7s1SKgc
	 sgJs4GLPwtAIWbTX+zAbekkuUdmhtHFk1BIeER5/bvQdiio4i/hzotxDH8fGjXV9vM
	 LWd+2WoqC389E/4Vvywwlo8EBWYGH7BUYYLr7z9A7RGb+f4W+tCOQmXwb5OOBxOygg
	 MozmtnwKfVl0bNV2g+ta3xfQJS5wyMqzGH9EnRmOj+lO6AdNacU52dGVaqPdlyw6N/
	 v2zJHx8OfeXbWG94VglCaXdqBgp2YFZPyXMccrvTP445t+b9I8iBe7TliQIsORvnwu
	 qL2ONfNyq1t1g==
Date: Wed, 1 Apr 2026 08:40:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <ajit.pandey@oss.qualcomm.com>, 
	Imran Shaik <imran.shaik@oss.qualcomm.com>, Taniya Das <taniya.das@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/7] dt-bindings: clock: qcom: Add X1P42100 video
 clock controller
Message-ID: <20260401-opalescent-sensible-pony-c0fcfc@quoll>
References: <20260331-purwa-videocc-camcc-v3-0-6daca180a4b1@oss.qualcomm.com>
 <20260331-purwa-videocc-camcc-v3-1-6daca180a4b1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260331-purwa-videocc-camcc-v3-1-6daca180a4b1@oss.qualcomm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283282-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9DF0C3754EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 10:54:10AM +0530, Jagadeesh Kona wrote:
> Add device tree bindings for the video clock controller on Qualcomm
> X1P42100 (Purwa) SoC.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  .../bindings/clock/qcom,sm8450-videocc.yaml        |  3 ++
>  include/dt-bindings/clock/qcom,x1p42100-videocc.h  | 48 ++++++++++++++++++++++
>  2 files changed, 51 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


