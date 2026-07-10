Return-Path: <devicetree+bounces-324433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vkKEInrhUGpu7AIAu9opvQ
	(envelope-from <devicetree+bounces-324433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:11:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1153673A939
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:11:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=Vo0O6UI6;
	dmarc=pass (policy=none) header.from=linuxfoundation.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324433-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324433-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEB0D302592C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8331408001;
	Fri, 10 Jul 2026 12:08:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315203F54DD;
	Fri, 10 Jul 2026 12:08:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783685329; cv=none; b=D+whY46jW3rrVQKp4k43dK2untdLnFs9tjCH0wBJLQLa5RqL5tzf2KRa892cvVpaMoAcs9ShUsIu8gT1UgEAzzGjc6GnCAp5Lb9o+1mmcIsrvj84fhL/ETHtYwQRDLVXoDQhgLRryjaNAfazAjvsJuJof8s7/7fP+FMCA5HxIfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783685329; c=relaxed/simple;
	bh=KyUG5kxcreVEYKHZB9sbcDpNVdD9NPuLy0cq/Y4XGes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hPFeyZWkIGh+blR6O1FPpwmwptxzdNYagEZ5d4av8FaQO0KDZj/9NnUPz7rSU+VdrN7NhcjgUlRe9yfZV4rWgtyoI2TLGG+JYf5V/s3vFS5s/soiuLolak7kqIVR8v2KywTsq7DacZA4bJOkzRRJnSr9N6mTm9/0kcZLce/H0dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Vo0O6UI6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02B5D1F000E9;
	Fri, 10 Jul 2026 12:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1783685327;
	bh=hKXVaY4pvzXF0DTi5PsRgZDNYnOewnDAIVksiSk+weg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vo0O6UI6tlXkw70wVEdUQEWW//hMh6zTJywnktib0C5FMEMvvxkfZFTr73frfzKvp
	 al80t2ZNngkuBry7bMS9zNzmmXYC969dWSUdj5McEqcglWY4l689gjtJk07VlzhQIz
	 VGXg9askrhybgI4+MBAARgkRyuYG7LEPZRVzTY3s=
Date: Fri, 10 Jul 2026 14:08:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-acpi@vger.kernel.org, driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v4 05/14] usb: hub: Associate port@ fwnode with USB port
 device
Message-ID: <2026071025-diffused-jersey-0d94@gregkh>
References: <20260709095726.704448-1-wenst@chromium.org>
 <20260709095726.704448-6-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260709095726.704448-6-wenst@chromium.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324433-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,gmail.com,collabora.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linuxfoundation.org:from_mime,linuxfoundation.org:dkim,vger.kernel.org:from_smtp,intel.com:email,gregkh:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1153673A939

On Thu, Jul 09, 2026 at 05:57:10PM +0800, Chen-Yu Tsai wrote:
> When a USB hub port is connected to a connector in a firmware node
> graph, the port itself has a node in the graph.
> 
> Associate the port's firmware node with the USB port's device,
> usb_port::dev. This is used in later changes for the M.2 slot power
> sequencing provider to match against the requesting port.
> 
> To avoid potential conflicts with ACPI firmware nodes and then causing
> power management issues, only assign the firmware node if the hub's
> firmware node is not an ACPI firmware node.
> 
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v3:
> - Added missing fwnode_handle_put()
> 
> Changes since v2:
> - Skip assignment if hub firmware node is ACPI node
> ---
>  drivers/usb/core/port.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/usb/core/port.c b/drivers/usb/core/port.c
> index b1364f0c384c..e8fb2acd77be 100644
> --- a/drivers/usb/core/port.c
> +++ b/drivers/usb/core/port.c
> @@ -7,6 +7,7 @@
>   * Author: Lan Tianyu <tianyu.lan@intel.com>
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/kstrtox.h>
>  #include <linux/slab.h>
>  #include <linux/string_choices.h>
> @@ -358,6 +359,11 @@ static void usb_port_device_release(struct device *dev)
>  {
>  	struct usb_port *port_dev = to_usb_port(dev);
>  
> +	/*
> +	 * At this point ACPI nodes and swnodes have been removed by
> +	 * device_platform_notify_remove() in device_del().
> +	 */
> +	fwnode_handle_put(dev_fwnode(dev));
>  	kfree(port_dev->req);
>  	kfree(port_dev);
>  }
> @@ -780,6 +786,13 @@ int usb_hub_create_port_device(struct usb_hub *hub, int port1)
>  	port_dev->dev.driver = &usb_port_driver;
>  	dev_set_name(&port_dev->dev, "%s-port%d", dev_name(&hub->hdev->dev),
>  			port1);
> +	/*
> +	 * ACPI FW nodes are associated later when device_register() happens.
> +	 * Skip assigning one here to avoid potential conflicts.
> +	 */
> +	if (!is_acpi_node(dev_fwnode(&hdev->dev)))
> +		device_set_node(&port_dev->dev,
> +				fwnode_graph_get_port_by_id(dev_fwnode(&hdev->dev), port1));
>  	mutex_init(&port_dev->status_lock);
>  	retval = device_register(&port_dev->dev);
>  	if (retval) {
> @@ -852,6 +865,7 @@ int usb_hub_create_port_device(struct usb_hub *hub, int port1)
>  
>  void usb_hub_remove_port_device(struct usb_hub *hub, int port1)
>  {
> +	struct usb_device *hdev = hub->hdev;
>  	struct usb_port *port_dev = hub->ports[port1 - 1];
>  	struct usb_port *peer;

Is this last variable addition not needed here?  It's not used.

thanks,

greg k-h

