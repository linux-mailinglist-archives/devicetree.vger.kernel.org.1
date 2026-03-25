Return-Path: <devicetree+bounces-280121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OcwIGY2w2mwpAQAu9opvQ
	(envelope-from <devicetree+bounces-280121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 02:12:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D3531E38B
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 02:12:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BA495300830F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 01:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF6123FC5A;
	Wed, 25 Mar 2026 01:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdwjlJnI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B5F22CBE6;
	Wed, 25 Mar 2026 01:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774401083; cv=none; b=Jx440tg1U+6lVh98xvpPwujg6/C8yA+Jd4PZNjS60jkkGXsiXDC5Xr9ZIqTtaZbKxlywMh4Epipt7pdkuoafJbEyz7w4NqwupzwBZJF2/wXs4v5+1j1jX96C2+tyrBJbPBR7UnFAZNzMuUuAAP0CDBXDOv1yuToHOd3iho1EWR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774401083; c=relaxed/simple;
	bh=0yCnHiVTvtphHFTceDinx5OaQHBR0wnXgawbH+xfca4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Onbdvh4hktXHUqrMqaeLl84rL73RHdYurXIu4wslH1u5xAqox/uulkxZK/8MUO/YD+5g6nzSbAScLMwXoN+o6gTb1BYvbp8NgU7mxe6Y7OK4F2X1EibfzopoVqfLrdWgxpCEISFhOW40OQGMf9xa9kwnp6eckY2Y7jUZ12tVCCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdwjlJnI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68955C19424;
	Wed, 25 Mar 2026 01:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774401082;
	bh=0yCnHiVTvtphHFTceDinx5OaQHBR0wnXgawbH+xfca4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZdwjlJnICK1HelWBP/az5HR4gh/HsmeWPranxlAJPkJVoun/V4krJUevNCWSsx6UW
	 XhFHBlrVuvSNLAmCtBlVDM61BhR/h62GUG1yG8Qh71xVtsBB6koitL6NHIIqzxiBxe
	 +iyHdF/WTxgES62tY+Ndav0Q0x7APYDotoyrrB5eLZOPSPfbuUURgW4CqI4iZGD1vD
	 eJGZEuivdAw3DpM4JZKjzHv0ydpKDL5EApf82x41Mw5f5AzTG1tv93zPb8SsSkfu22
	 vYcx0icchGNcXxUd2e6yKJ3pKS0nCTmpxrjKMez7BP/aCyI1joCMxsj1keD63D3M/Y
	 0OwCxHVznHchQ==
Date: Tue, 24 Mar 2026 20:11:21 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: usb: qcom,snps-dwc3: Add missing
 clocks and interrupts constraints
Message-ID: <177440108099.2346208.7210868672113394229.robh@kernel.org>
References: <20260323-dt-bindings-snps-qcom-dwc3-cleanup-v2-0-3bcd37c0a5b5@oss.qualcomm.com>
 <20260323-dt-bindings-snps-qcom-dwc3-cleanup-v2-2-3bcd37c0a5b5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260323-dt-bindings-snps-qcom-dwc3-cleanup-v2-2-3bcd37c0a5b5@oss.qualcomm.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280121-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 24D3531E38B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 23 Mar 2026 09:54:13 +0100, Krzysztof Kozlowski wrote:
> The top-level part defines variable number of clocks and interrupts, and
> each "if:then:" block narrows them.  It however narrows only the
> maxItems leaving minItems undefined, which then takes different values
> depending on dtschema being used.
> 
> Recommended style is to avoid ambiguity in such case, thus if top-level
> part has broad constraints, then each "if:then:" must specify both upper
> and lower limits.
> 
> Add missing constraints, mostly minItems but also maxItems for one
> variant.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Narrow also interrupts for qcom,ipq5018-dwc3/qcom,ipq5332-dwc3
> ---
>  Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


