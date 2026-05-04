Return-Path: <devicetree+bounces-292587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCewGjJ1+GlavgIAu9opvQ
	(envelope-from <devicetree+bounces-292587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 12:30:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADDD4BBBFF
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 12:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF86C3008612
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 10:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7E7C3A5452;
	Mon,  4 May 2026 10:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="cmY2y3Wg"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C348A3A4501
	for <devicetree@vger.kernel.org>; Mon,  4 May 2026 10:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777890566; cv=none; b=TCqqxfU5WclN7G5EYRvJsYKrA8Mk0WOYBwvfGrW95WkkNzW822P/u3ZiMNiAayyaUJ1SEcVArbvXp3zWN0m6GO8wrOHyKUZYdOSpOkJDbRev1oBwMCagLAkM+Ou4oZ1LcfvuhoTO+/D4CX47sOU12N0yqD19eopr90Bi5sb6XS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777890566; c=relaxed/simple;
	bh=Tl3VqM3hywY1r3QXa3Yprs6iZB9aAkfeNQRo5hC43UA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AgYYyOHkveEhjvVXK4lPvbt1geI9txGjQOaQIBBtqmdbHIyN9dIZmKzg4Ec2FX5+EQLq/cFN7WshD5tGUbrn1sLCQgxbeYl5FpgUcpoJVvpG3a9MsWSpp9Q8e2i0f3nxBBtIedUSIe822MOwTVtR24OVEp1tFSnOSEGggFTTtW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=cmY2y3Wg; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <5f126a59-9f03-44e3-b4cd-27f70bd9840b@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1777890552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/JdBfm5/FeCpkOwuefe6HGDXxCL2lAQQbrnIFT01dTg=;
	b=cmY2y3WgXily0aTB6Cx05zGLsCDiTGEhAASXVI7NvaM/fULjpb0XiNUtlSSHcH6NdgTp+s
	KRMMwxbtva2BSSlajV6/tzQ95QoxjrlW3dGcaljp5/gstLMRKLow84ZI7rQstpHLpOdGtU
	6GWeNlzwzxWuhwUyh0kl5CZ3ZE87cog=
Date: Mon, 4 May 2026 11:29:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [RFC PATCH v2 1/4] i2c: rust: add smbus_read_byte_data and
 smbus_read_word_data
To: Muchamad Coirul Anwar <muchamadcoirulanwar@gmail.com>, jic23@kernel.org,
 linux-iio@vger.kernel.org, rust-for-linux@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: branstj@gmail.com, lars@metafoo.de, ojeda@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, igor.korotin.linux@gmail.com,
 linux-kernel@vger.kernel.org
References: <20260429132234.30514-1-muchamadcoirulanwar@gmail.com>
 <20260429132234.30514-2-muchamadcoirulanwar@gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Igor Korotin <igor.korotin@linux.dev>
In-Reply-To: <20260429132234.30514-2-muchamadcoirulanwar@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 5ADDD4BBBFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,metafoo.de,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor.korotin@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linux.dev:dkim,linux.dev:mid]

Hello Muchamad

On 4/29/2026 2:22 PM, Muchamad Coirul Anwar wrote:
> Signed-off-by: Muchamad Coirul Anwar <muchamadcoirulanwar@gmail.com>
> ---
>   rust/kernel/i2c.rs | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/rust/kernel/i2c.rs b/rust/kernel/i2c.rs
> index 7b908f0c5a58..6eaea1158fda 100644
> --- a/rust/kernel/i2c.rs
> +++ b/rust/kernel/i2c.rs
> @@ -477,6 +477,30 @@ impl<Ctx: device::DeviceContext> I2cClient<Ctx> {
>       fn as_raw(&self) -> *mut bindings::i2c_client {
>           self.0.get()
>       }
> +
> +    /// Reads a single byte from a register via SMBus.
> +    pub fn smbus_read_byte_data(&self, reg: u8) -> Result<u8> {
> +        // SAFETY: `self.as_raw()` is a valid pointer to a `struct i2c_client`
> +        // by the type invariant of `I2cClient`.
> +        let ret = unsafe { bindings::i2c_smbus_read_byte_data(self.as_raw(), reg) };
> +        if ret < 0 {
> +            Err(Error::from_errno(ret))
> +        } else {
> +            Ok(ret as u8)
> +        }
> +    }
> +
> +    /// Reads a 16-bit word from a register via SMBus.
> +    pub fn smbus_read_word_data(&self, reg: u8) -> Result<u16> {
> +        // SAFETY: `self.as_raw()` is a valid pointer to a `struct i2c_client`
> +        // by the type invariant of `I2cClient`.
> +        let ret = unsafe { bindings::i2c_smbus_read_word_data(self.as_raw(), reg) };
> +        if ret < 0 {
> +            Err(Error::from_errno(ret))
> +        } else {
> +            Ok(ret as u16)
> +        }
> +    }
>   }
>   
>   // SAFETY: `I2cClient` is a transparent wrapper of `struct i2c_client`.

Thanks for the patch. However, we've previously agreed [1] that 
I2cClient should implement the IO trait [2] rather than adding 
standalone methods like these. This patch would need to be reworked in 
that direction.

If you'd like to take that on, feel free to submit a patch series 
implementing the IO trait instead.

Cheers
Igor

[1] 
https://lore.kernel.org/rust-for-linux/20260131-i2c-adapter-v1-4-5a436e34cd1a@gmail.com/

[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/driver-core/driver-core.git/commit/?h=driver-core-testing&id=121d87b28e1d9061d3aaa156c43a627d3cb5e620

