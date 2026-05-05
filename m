Return-Path: <devicetree+bounces-292928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMLlEHqz+Wly/QIAu9opvQ
	(envelope-from <devicetree+bounces-292928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 11:08:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3674C92DF
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 11:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 918F0307C56D
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 09:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF70386440;
	Tue,  5 May 2026 09:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MU3wpuF1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB41A1CAA65;
	Tue,  5 May 2026 09:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777971848; cv=none; b=vDKYaVujnQSXjagO9lpHOBXB04WKYfZm11WmhzVR/b9ROZZFqogSkqsTk86CAej3ASypXH1wVtRuvk7JKPtvQl+6K3+NgEQITKmWuFVLHmDMQEZHaSpyejxr9kwShkGasZdjlZINCvfFAQcMrdzdau7WbrCKBvMy0mHuZQjDn6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777971848; c=relaxed/simple;
	bh=QS/TAwi+F6sxlbynaevB4JAyYHuFZYYbP0/LjLtIoNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lNHaISqHsWR9mHRgUZ1wDXpRNK0F5TIZZT86Nx83yhZNvDl/2rcw474AZvOliTYKUyr03+Y7U7guzSsDb04LswFH0rzOcQcGLWHVB7C+HyaSqPZswwJCfAq63WeOPSGBqExs0za58vQMH9L3irUh/F/ERY67Yx9NoHASmbdxnvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MU3wpuF1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9D3EC2BCB4;
	Tue,  5 May 2026 09:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777971848;
	bh=QS/TAwi+F6sxlbynaevB4JAyYHuFZYYbP0/LjLtIoNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MU3wpuF1+3UVbvhTQxWB114yJgJq28kJIk2PpeWslSj6lBHCfuqorOTDGJBJC3TlR
	 2bjjkGytnHG/C48DY//2SYkW22RFjAU18Vn3f9uA7KZYcnn7q6qApKwWoBhZY4Bn2A
	 k6BDIYT+7EPdvmWo6hWebGzFDXuYlb/wgOlD0wzeq6CXCaCVmx1HOvILrciZ8MEcS1
	 03YAqnpGy3yTD2pYnghJp1AxS9n1Nb+0cu4Ev8gzUE2z8UWozTQ77IRebBadfOjShO
	 RIeBMUMohHPVEvblGZzME+okAA8seljhxudNVCLUSxqlV4LeBO8Lut8zvRhiwpLa/a
	 +XXtbdcdqVMRw==
Date: Tue, 5 May 2026 11:04:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: interconnect: document the RPM
 Network-On-Chip interconnect in Shikra SoC
Message-ID: <20260505-sweet-quixotic-taipan-de60cf@quoll>
References: <20260504-shikra_icc-v2-0-81076171e010@oss.qualcomm.com>
 <20260504-shikra_icc-v2-1-81076171e010@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260504-shikra_icc-v2-1-81076171e010@oss.qualcomm.com>
X-Rspamd-Queue-Id: 8E3674C92DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292928-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.28.175.192:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Mon, May 04, 2026 at 09:41:13AM +0000, Raviteja Laggyshetty wrote:
> +    then:
> +      properties:
> +        clocks: false
> +        clock-names: false
> +      patternProperties:
> +        '^interconnect-[a-z0-9]+$': false
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    system_noc: interconnect@1880000 {

b4 diff shows me:

    -+    snoc: interconnect@1880000 {
    ++    system_noc: interconnect@1880000 {

Drop the label, instead of changing it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


