Return-Path: <devicetree+bounces-265628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZJvBEYgKkmm3pwEAu9opvQ
	(envelope-from <devicetree+bounces-265628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:03:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBAE13F534
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A986A301701A
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D1992236E0;
	Sun, 15 Feb 2026 18:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL8HVEN3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DDD13E02A;
	Sun, 15 Feb 2026 18:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771178626; cv=none; b=srHIlsV6EUjRNTXjrbTxtPgXh3SRp3oflhkykGySQM8G0fHlhEMZ3qBaLE7HZFxfHa6oM9fKdj9rgKjpLMOMy8gEcJKkTXgvqnhty9eoN1tZTTc+Ot8/5/nbkRgHcqk4gMHLRmD9CBPeDUM4fq4k216UwheR1zNkKVrvLqr4gZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771178626; c=relaxed/simple;
	bh=azBXCPSTuJeLAoarac9vA+oXESU+zD3OuH88adXLRdM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PP1l5KORr8L8kGr7lw26Jir+Nap/taHa3nbEUV0Kd6ekcEGCFlSj1jHp5OpHerLeCRqTiXZYApHbQvb11IestKXOUdjDPg5v/oB/OuIaYwb9XLpN5/YshVUiDaKw0MAxmxf5Y4+riB8VK8UfEPJhOZFSLd3uxIgi5Z/KMQitS2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL8HVEN3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16C9FC4CEF7;
	Sun, 15 Feb 2026 18:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771178625;
	bh=azBXCPSTuJeLAoarac9vA+oXESU+zD3OuH88adXLRdM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=VL8HVEN3q2KbNFHnnY7L5ucND3FYjROLLOnEEBOadRb8XEdFmQrwoJJShTeGubdWe
	 4yvNugj5WWdFz93bOIO48DgtqZr9+2rm5Td6bjupZUBbHqXAnun1085CwUiDz5fHUn
	 rEnRECJAW2WNr59mCo3wPWdTYZ1vZHsNj5QH+6YipguPFRR2AVX7ymRjt3A1em1jkX
	 RloChAuopF+B36N/es0ycuE16BlcuUXSfXdLMlDTXak7cyhAZWklLRS5YMub+mwOG1
	 mk5lISxc6FZvtsUt7xMnuX2q/jVPt5+lCZJVNzNgoamAp+YXinU/HF7RCa4L5Enva9
	 4RLgjxpERL/Uw==
Date: Sun, 15 Feb 2026 18:03:34 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>
Cc: andriy.shevchenko@intel.com, Michael.Hennerich@analog.com,
 andy@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, krzk+dt@kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mentees@lists.linuxfoundation.org, me@brighamcampbell.com,
 nuno.sa@analog.com, robh@kernel.org, skhan@linuxfoundation.org
Subject: Re: [PATCH v1 2/2] iio: dac: ad5504: use adi,output-range-volts for
 scale calculation
Message-ID: <20260215180334.14775318@jic23-huawei>
In-Reply-To: <20260213170502.28465-1-0rayn.dev@gmail.com>
References: <aY40-0v9tbXC4tPY@smile.fi.intel.com>
	<20260213170502.28465-1-0rayn.dev@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265628-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8CBAE13F534
X-Rspamd-Action: no action

On Fri, 13 Feb 2026 18:05:02 +0100
Taha Ed-Dafili <0rayn.dev@gmail.com> wrote:

> Hi Andy,
> 
> Thank you for the detailed feedback, I'll make sure to add those changes
> in the upcoming v2 series.
> 
> Best regards,
> Taha

Hi Taha,

Small process thing.  Please save thanks like this for the change log
on the next version.  I know it can feel a little less polite, but if everyone
sent a thanks message, that would add at least 1/3rd to the volume of emails
and we have too many of those :(

A simple, thanks under the --- or in the cover letter for the next version
doesn't have that problem and still acknowledges the inputs of reviewers.

Thanks,

Jonathan


