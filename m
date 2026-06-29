Return-Path: <devicetree+bounces-317013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NuOvCmNoQmoT6gkAu9opvQ
	(envelope-from <devicetree+bounces-317013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:43:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 979766DA6D9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:43:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=icloud.com header.s=1a1hai header.b=SUDiY1Bz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317013-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317013-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=icloud.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E54B032B7B8D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35FF6403AF1;
	Mon, 29 Jun 2026 12:33:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound.qs.icloud.com (qs-2005g-snip4-11.eps.apple.com [57.103.86.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3DE400DF0
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 12:33:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782736422; cv=none; b=TCpovOGM4sDM9sISqpCtDJG2XrJiuxDKmaoI/Tq/DK/aR1I6pkLhGZPboRQxQrDYhUis94DggeLgGfOi4KdcsLLEgODxhKbDI9I4/5delcG879xcBh6opvYPuz3R2ZuwpYp6rxAn2pI6ZjU7vjVJDn90jNX5kfw9oabbqo0zug0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782736422; c=relaxed/simple;
	bh=8YLXhUbIWRx0tS3HCOlad3wN8nbngvo7OVFQ/aCeobA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d0gOi4jAkwNWC7y3Oz7aw6qJbn+T0BYt4DiOi4yA51XngGoLuxW+hLjT+oQDQ+GJc2Mhc9kLPX9t7C9zj9yWpz7Tvh9MDQt0GP77khvdOhRtS2JeLP0sL28MGqn7YUB7oCilQzjYFxkMT+Ct28l1O4Yp/Nzxk52M4+4K0gvTSEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=SUDiY1Bz; arc=none smtp.client-ip=57.103.86.201
Received: from outbound.qs.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-east-2d-10-percent-2 (Postfix) with ESMTPS id CDED93000A32;
	Mon, 29 Jun 2026 12:33:35 +0000 (UTC)
X-ICL-RepId: 019f135e-ebd7-756b-bea4-1ef1525772bd
X-ICL-Out-Info: HUtFAUMEWwJACUgBTUQeDx5WFlZNRAJCTQhAAEMGUgdeCVYAVBcOVk1DEVkYWTRaBXkRUAFYHlZeWhdeTVEPDxlaFFwYU0VRH1RYQQ4KWgdQUR1fAgoERwRbF0YDU0VDAxcRUAFYHlZeWhdeTUcfQE1iSQFaGVscQBdKbk1TDw8ZWhRcGFNFUR9UWF4EU1YOEl0aBVRVXgJdXB4KVRpfBRYMVQpfVFofRAEdBF5RDwAUWE8BLV4IXh9MHB0OWAYMUE0BQwgKAlEcVg1X
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1782736420; x=1785328420; bh=T5WuAUMg5pxT+GcaKkat0zADndF0s7gZB8ckXQWQGo8=; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:x-icloud-hme; b=SUDiY1BzFJFP9G7QISkDRz7YR1voUUoKXVKATHbI2BqTCCPDF2zZCPK9s5QR5ksem9fmg6BnV0SFT6zt5DHHxwiiLfPJ7AjGFFbwTwmfB8tWX9345jOAJMg0GjMAOzPcqlwFKvAoYmty9fCk8WVlHv5X9iD2idVxsBqoLQb1NV+PiLGpdGnCbnI3xXbPdIDIcXSTC0GtYLU3jjgurbauGpcJ4yUHbk/xti7hA/gcYECiLELNjWfape5K/NHFQHctOiKA3W5mRQaqOmgPyWObJGE/uTF/OG/olnMbUVVfwIBCcaDPp/muBJktIGYKQRJKCoeir2j3iNJFHm2+l4syVw==
Received: from [192.168.1.26] (unknown [17.57.155.37])
	by p00-icloudmta-asmtp-us-east-2d-10-percent-2 (Postfix) with ESMTPSA id 847B93000093;
	Mon, 29 Jun 2026 12:33:29 +0000 (UTC)
Message-ID: <bdb69b50-ef98-47f5-92c1-48e73fd2da72@icloud.com>
Date: Mon, 29 Jun 2026 20:33:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] software node: Fix
 software_node_get_reference_args() with index -1
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Zijun Hu <zijun.hu@oss.qualcomm.com>
Cc: Alban Bedel <alban.bedel@lht.dlh.de>, driver-core@lists.linux.dev,
 devicetree@vger.kernel.org, Daniel Scally <djrscally@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
References: <20260618152035.1600436-1-alban.bedel@lht.dlh.de>
 <20260618152035.1600436-2-alban.bedel@lht.dlh.de>
 <85b2bac4-9882-4f35-81e4-1718a52aacc9@oss.qualcomm.com>
 <akIfHJd2gpLC1u5o@ashevche-desk.local>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <akIfHJd2gpLC1u5o@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDEwNCBTYWx0ZWRfXzaIdZ+8vDicx
 lzzVH3t2hqsW4V/H5PnuPN8Y5w4KAM6xUjLTnKyESsRH7RqEYLR5IZelSgo3iueFDXm1ck1MyC4
 QYGKpvuRgTgPisw7etlMptX+5ey5I8RYIIx+8W5/vBPb3n+xwYVeHLGxsCa0kT2inA15vBSzKU5
 KFxsVpqkAYqJfDtAObLIgyPJvSrc3e5x/LdjOseDKSZFBugJmTLLSITjoMNcXjIeRdCU0R+T+5L
 H+6D3JIxtaJlfvpVHMI4VQ0WfRihnIfOdYKCInHpZJG+LvQ3fiLDZySIL9Rke/o0eAt25Xbd7wy
 G4Nyiuwk6/AE1DwiA2O
X-Proofpoint-GUID: 8bQz5ySa9e7w2bF775xeibc55Cs4AGcF
X-Proofpoint-ORIG-GUID: 8bQz5ySa9e7w2bF775xeibc55Cs4AGcF
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[icloud.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[icloud.com:s=1a1hai];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[icloud.com];
	TAGGED_FROM(0.00)[bounces-317013-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[zijun_hu@icloud.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:zijun.hu@oss.qualcomm.com,m:alban.bedel@lht.dlh.de,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:linux-kernel@vger.kernel.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lht.dlh.de,lists.linux.dev,vger.kernel.org,gmail.com,linux.intel.com,linuxfoundation.org,kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zijun_hu@icloud.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[icloud.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,icloud.com:dkim,icloud.com:mid,icloud.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 979766DA6D9

On 6/29/26 15:30, Andy Shevchenko wrote:
>> who will use UINT_MAX ?
>>
>> This function is a interface function.  the best fix should check
>> input parameter @index and return -EINVAL if it is not expected?
> And how do you know which index is allowed without doing that division?
> Basically this patch does what you asked for: check input parameter for
> the allowed range (which is dynamic, depending on the property length and
> size of the reference structure.

Introduce a common macro to limit the max reference handle count and put it
in include/linux/fwnode.h with the following macro.
#define NR_FWNODE_REFERENCE_ARGS        16

OR introduce a macro for software node only.


