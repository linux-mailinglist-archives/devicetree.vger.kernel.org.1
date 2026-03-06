Return-Path: <devicetree+bounces-271967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPMTI3KsqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:29:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2F021EB6C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C81403027CB5
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4033437C0F5;
	Fri,  6 Mar 2026 10:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YZNrFYMs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZwivZVDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A53637C104
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772792891; cv=pass; b=K5wrq0wJ43g/iJ62k5qC6gTTqaiTl5FF6v5hpuUqLXhcqvfRJPTcysyHsyDELsE9liIcOrP5ij5/R6AmdXnvw7DJXYz1CYmw0uHdocjMzas6/PNQfu9swUQIJdqZLC3nr1+CWyEajP+9R895GwYghW29lVBBbKi69Pja9U4BUeQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772792891; c=relaxed/simple;
	bh=tdvWNHoSdu2Iafp7/mrEBG/G+46fyd5oPjPg3sfvUEA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MWwQFMrEeHpR3iRS+1pknCE+c9LnXyE/z/DJXOaDC+fjYQrTByv3hQjixGoVTbT1lWBoX1P4z4tHuSoGqmv3ssuGT81GBCvoUtvsEUg3SClNmoNcKV6FltDfDqEOoVfd709huvYgQWBp82zgVjpT0gR0J4OSGNalJl1P20OXshA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YZNrFYMs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZwivZVDt; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626AGrA63297966
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 10:28:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y9h7Pr+7iqUr+8V1CASot1k/T1Bc+EXpK2ZcBTLqhM0=; b=YZNrFYMsk/Fkkusp
	mx2tkNw7vXOuadXBQCGBDBUTlnpr4NZWNentC4QFbcG5JFgpAt1ePFONSVn3deL1
	du6XPuHnmNjRjKozn+7yp1KVO4GZaLcJhVStbKqzhRv6jX3CKxlmllys+4Hzatey
	JliSi8fTmWxnYIg9oOT7O3uCq0cv5Jri9G5kxjq3+xcNYylT8JoAnL+RjcsKgw16
	/Run8SLGv4x8IrgXOw/d+NvubpqD7qO6zmjgcukTczcfqrv9Zw8Q9k2STjZkcRnt
	HWfPzwo+IOH3e4ul5BaL3HOs5xN+3QhnD3tMo+cIdjqsEqso8ZuPjOWrhJrKndmA
	3Yz0vw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqpxdsceu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 10:28:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb4817f3c8so4515655685a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:28:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772792885; cv=none;
        d=google.com; s=arc-20240605;
        b=No6nirSpsKqtfX+S62Cdl7CxR1VXDqR91Z8sXCt2HhyfeJY0FqIqZqk/jpuWGOMhBM
         EKrFn6S6R9vdezce+0vyUHgi1JO71y40jR62eoUntMC8qmFONBZnrsYeB799Gzkt1fKf
         9faIEzf0UfWgGI1h+x7ga6QOXhRFRjp1W+uaCFYR7m9ls5TdZrZkC4GembhaLyvRl01N
         V5UHLYeX3FnCggtWlDmIJ2CQVevC/0UdLPuL5IpZPfgXb/y79SvFIgZY8xjukKxWG/iQ
         qZiIR4RP2CO/8o19I95YUsm45Rox/ZcCcIgXh8UNWcXGJEWt236P4l7nRb3fflME7MwK
         U00g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y9h7Pr+7iqUr+8V1CASot1k/T1Bc+EXpK2ZcBTLqhM0=;
        fh=ZdC8TKfNr5nkGf63aBuWl5E3pDoLPHuJVh3qbbxhlfE=;
        b=CT50XWaGAhS9j7VG9i2aWiQDTv12iqfL/F9T5/brfcLnK1YIHS8KiIyGJ6lRuq2mWz
         FqI4PEoUvkOgn63Hojd9aUKWSTYmIGffAh2hSdutSTj831yU4Xbb0CJVnS7+Ut+0GPp7
         jJUM7wXB5xQJmyKU5d+IUDnGUaKg8BsOtaQE8vJULAA5Tfy5PwzDJYiEwmXdJ1Rg7WRm
         TmqYwt0IHACDDqoXmDegwwQUZnuKzsyt6BGfOVr+5SDp//l36wzrpYjVIdHPraAM4r68
         3orXoDpqIWmKYrst3HDDL4XdPGsEt3WHrc8kueCIl9hijh2941AYXHcT2gqyZ0869GRv
         lIog==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772792885; x=1773397685; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9h7Pr+7iqUr+8V1CASot1k/T1Bc+EXpK2ZcBTLqhM0=;
        b=ZwivZVDtbsWU/w8SoRcOCkZQ17h+GAfpi7mAEOZrgCFR7mbSQXetIjRIpWcXZbcQXx
         AqH8KHNfiBH4FMALrRqOmI3gWXZIN1vZ6+9l8vpknH0Q45kEsncxQLswJ/qFThba8KwS
         o4XR9GnnvcJXasjT7v+cns/MJm8hTIZLvxu3pkzAYBgbSFmEyqjFWg89kBcPI8wSQjcw
         y3qEJE7lhg4LSNoQikIklx9FQm6ZiFYC7uh++TAvpVlXFTZ3wS0MTp/goLD/o1fKisjF
         QSTWArRoSpBGU3SPHzwmBxD1TQUUyIAM1CHO+JQ4rMrViyx2D35JgAKYcO/LModEJGo3
         yYzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792885; x=1773397685;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y9h7Pr+7iqUr+8V1CASot1k/T1Bc+EXpK2ZcBTLqhM0=;
        b=S1OjfEIt7+olKpPn6rt79Iq4JMt808W4h4bW59OGVbnIxhKCkzDHdb3gXvn83EEiFK
         /OeJF6zageK3Lt1KxMHGK3u4cd/9eg7UEmdALJ393N+5AsrmgM3iwzCT7fFoWebgcPZP
         S2Qvy8C2rofaDHjMiQ3iJsn9/2zm0Bl3cVBH0grr+W02n3MWFhaOddUGycx6Inr6ty8C
         85PKb+TAtFVTCvcdu49z02uqeB6pN4ODgOLJr/uvLcFFEw7uDv5QhXFoTXR47TJ+0OLf
         pMCbxCrWRERQYw1oI86HuYK6+pjsSLeWb6nrDIbGb6lEqsXJinIX4y88LoAG2GuyT7LU
         Ywhw==
X-Forwarded-Encrypted: i=1; AJvYcCVm+RPZKrtWyKYVnhfFoCH3x3FkJpKqjpXdmHxJ1h/t1yC/MdscTItiZasiYryh+NsRvG9MO4YI7Z3/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/TzHiQVxj35FwQV/g2Eut/nSNauxzPOyC+zE/Kl18nKtor3K9
	nN97G1IFQuCjmXhpMZkKnuDIzhFaAEC387s6D6s6ts7Pph9C91WzvOC1XXZbQ/s2H2ehQy9Vv04
	16ppM8/xHegtBpEy9lwS2cLypqwzNBCPsCcm6bpWWcfcO4kMEZgSef0b7nMIp/x7dCVZb1kzDJt
	zhrPFrL66r7evsjpTRj/7uIPV5qJ+APqxEdDmSsjg=
X-Gm-Gg: ATEYQzw7UXYzp07HB4JB04AN6cof63DCbHIb7YVjzAj214SywB3IQtTlVn+ugh6+zLn
	7Lu4aZl2AObSyWWAvdcVyKS4vabJBFW1HR+IoQVQWavyf8I6kSVPDUccQWRNZlUComKbv1At7H9
	eH3m7dabFVnNM24jpeV+DmfiVLIUYH0PsWLIAnJIqH1C0q6+YtuvQfY8EWuxCNPJUOxOCU3lZ6l
	New6pijKw0sLOjWrDWDFs0sHNY1nc5N5dlpfUc=
X-Received: by 2002:a05:620a:25cb:b0:8c5:2f36:660f with SMTP id af79cd13be357-8cd6d4afe58mr161744185a.78.1772792885475;
        Fri, 06 Mar 2026 02:28:05 -0800 (PST)
X-Received: by 2002:a05:620a:25cb:b0:8c5:2f36:660f with SMTP id
 af79cd13be357-8cd6d4afe58mr161739885a.78.1772792884906; Fri, 06 Mar 2026
 02:28:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224-pci-m2-e-v5-0-dd9b9501d33c@oss.qualcomm.com> <20260224-pci-m2-e-v5-5-dd9b9501d33c@oss.qualcomm.com>
In-Reply-To: <20260224-pci-m2-e-v5-5-dd9b9501d33c@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 11:27:53 +0100
X-Gm-Features: AaiRm53iYOytG8xnHxV8VVUSUeAKgAc5EavTdm2RyqP-mIqV3qUo5jYkbTQaMc4
Message-ID: <CAFEp6-02wcaEYr5BJvqMgtMD6vArLghvw+Lh-YE+OLXyZa-i6Q@mail.gmail.com>
Subject: Re: [PATCH v5 5/9] dt-bindings: connector: Add PCIe M.2 Mechanical
 Key E connector
To: manivannan.sadhasivam@oss.qualcomm.com
Cc: Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nicolas Schier <nicolas.schier@linux.dev>,
        Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Mark Pearson <mpearson-lenovo@squebb.ca>,
        "Derek J. Clark" <derekjohn.clark@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-serial@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        platform-driver-x86@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, linux-pm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-acpi@vger.kernel.org,
        Hans de Goede <johannes.goede@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: 68vaSxEOVhRZaqZjnfLwJ0J8h2SsJNr5
X-Authority-Analysis: v=2.4 cv=E83AZKdl c=1 sm=1 tr=0 ts=69aaac36 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Aq5ih5MREXdaAn1MBKMA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5OSBTYWx0ZWRfXxHw2BexGkWI3
 g+p+PTgySB7W7qQMERtKQWRJa6tuPe3t9ZzHEXsxgvl1jUE5zb1ZxJe1QCViKRct93ZLYZ3D8Ww
 oNh46DU43+fYs8XMbJT3kd2ilABhvxrFhZHXfoGlA2X/jmrP0m5T7FKURl9VTUDBMCD8ldcllX8
 BeKD4+U99kmt5+Hemn4qftB7Z2AX1qowHoFEkdt26mYlIT9NkSbNcxLHMP2mL1hpsAfEGIAi7su
 IxeH37pTG1Ae3a2vkn1+/OSuzt/rf9+dO14EHf2A6ZAU/GpBWlot80a5iG27ctfLJFq/mvx+3Sq
 m22c6gKM7dwdtcdyfpcD5SpJG/CCQukvfLALtRX7hcg1BqOoiD7r++OlTx2uwZjdAZ4zaP55MM+
 dTjJwwhZQNyFCZ/68mrvbA7Itoyd8JvHntJV4csod2aMplYlzv33vuGbPMmt+NlOe6/V7MnVViU
 cud8D7DGSAxeHFZkrFA==
X-Proofpoint-GUID: 68vaSxEOVhRZaqZjnfLwJ0J8h2SsJNr5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060099
X-Rspamd-Queue-Id: 9C2F021EB6C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,linux.dev,linux.intel.com,squebb.ca,gmail.com,holtmann.org,bgdev.pl,vger.kernel.org,linaro.org,oss.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271967-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 6:32=E2=80=AFAM Manivannan Sadhasivam via B4 Relay
<devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org> wrote:
>
> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>
> Add the devicetree binding for PCIe M.2 Mechanical Key E connector define=
d
> in the PCI Express M.2 Specification, r4.0, sec 5.1.2. This connector
> provides interfaces like PCIe or SDIO to attach the WiFi devices to the
> host machine, USB or UART+PCM interfaces to attach the Bluetooth (BT)
> devices. Spec also provides an optional interface to connect the UIM card=
,
> but that is not covered in this binding.
>
> The connector provides a primary power supply of 3.3v, along with an
> optional 1.8v VIO supply for the Adapter I/O buffer circuitry operating a=
t
> 1.8v sideband signaling.
>
> The connector also supplies optional signals in the form of GPIOs for fin=
e
> grained power management.
>
> Tested-by: Hans de Goede <johannes.goede@oss.qualcomm.com> # ThinkPad T14=
s gen6 (arm64)
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.=
com>
> ---
>  .../bindings/connector/pcie-m2-e-connector.yaml    | 184 +++++++++++++++=
++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 185 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/connector/pcie-m2-e-connec=
tor.yaml b/Documentation/devicetree/bindings/connector/pcie-m2-e-connector.=
yaml
> new file mode 100644
> index 000000000000..82dfd776d480
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/connector/pcie-m2-e-connector.yam=
l
> @@ -0,0 +1,184 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/connector/pcie-m2-e-connector.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PCIe M.2 Mechanical Key E Connector
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> +
> +description:
> +  A PCIe M.2 E connector node represents a physical PCIe M.2 Mechanical =
Key E
> +  connector. Mechanical Key E connectors are used to connect Wireless
> +  Connectivity devices including combinations of Wi-Fi, BT, NFC to the h=
ost
> +  machine over interfaces like PCIe/SDIO, USB/UART+PCM, and I2C.
> +
> +properties:
> +  compatible:
> +    const: pcie-m2-e-connector
> +
> +  vpcie3v3-supply:
> +    description: A phandle to the regulator for 3.3v supply.
> +
> +  vpcie1v8-supply:
> +    description: A phandle to the regulator for VIO 1.8v supply.
> +
> +  i2c-parent:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: I2C interface
> +
> +  clocks:
> +    description: 32.768 KHz Suspend Clock (SUSCLK) input from the host s=
ystem to
> +      the M.2 card. Refer, PCI Express M.2 Specification r4.0, sec 3.1.1=
2.1 for
> +      more details.
> +    maxItems: 1
> +
> +  w-disable1-gpios:
> +    description: GPIO output to W_DISABLE1# signal. This signal is used =
by the
> +      host system to disable WiFi radio in the M.2 card. Refer, PCI Expr=
ess M.2
> +      Specification r4.0, sec 3.1.12.3 for more details.
> +    maxItems: 1
> +
> +  w-disable2-gpios:
> +    description: GPIO output to W_DISABLE2# signal. This signal is used =
by the
> +      host system to disable WiFi radio in the M.2 card. Refer, PCI Expr=
ess M.2
> +      Specification r4.0, sec 3.1.12.3 for more details.

Just a small nit: according to the spec, W_DISABLE1# is intended for Wi=E2=
=80=91Fi,
while W_DISABLE2# is designated for Bluetooth (Key E).

Regards,
Loic

