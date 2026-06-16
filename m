Return-Path: <devicetree+bounces-312256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 50J9DL2ZMGqbUwUAu9opvQ
	(envelope-from <devicetree+bounces-312256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:33:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9199768AF35
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:33:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RzNmEvIS;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=DyBPp2kH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312256-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312256-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 341913019147
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 00:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB441EB5C2;
	Tue, 16 Jun 2026 00:32:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FC719F121
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 00:32:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781569978; cv=none; b=ikagPVjPWwrwaUNhwfh6CVF/4qp4inSW2XSTVUB8OYXtSHvFuIgghrBzV3IgGDfCmVVdoZpTlvIqhLjUf9MyWoHviMs5/rSInhhzMbnwcf6af2jEE59gqjruuxYal4RTt+3XWlRQ8n+DZgWXgvV5SshPzonlK79QiWLfruG1Evk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781569978; c=relaxed/simple;
	bh=FrdJBRaiw4/A4tIqj7D9XTkrSF6V6Sol2sFg53+qPJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UUajJ1grQvvWvtqChuwWTeDs9Xd+WCZshj0AQGCdYSJFRYQb7u5vAQUN6ezQUDRA6g0E7BXFObmsxEiz8+0POjEYYsCDow6d7wEojEPycZOPsPaBDoN7JXuL6U8gTTeOE9H1nKn1ZJf3+Iap7ExFDDWMg6z/y9wBYq8/gmh6N8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RzNmEvIS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DyBPp2kH; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65G0NxbV1561404
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 00:32:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tsvYFpY1yLMjl9k9WmpsHGOT
	Fu8DXSJDXlRw/qNDPMg=; b=RzNmEvISX1axtFfTvzEK8jKKnx08L36J39COfgnv
	AoYofnFgDKoQb9BDTKi3kWkyJGXMZBuKjiRfGLeE44VMxNjgPLvYrIG3OBLix4JC
	STTmjYc5EBn+k+labPyk8bS1NhV25nqIF8e/BwG4SYO53GYeOApminWQgGQTH+c7
	Xewn1obmMBxzm3sR9tYxF1HGUz8sZsw9/tR5So0F3Etc8VQyvnAVZ7+IY+nRYRSt
	MDLJuiqp2exjmr2nugqCYQAJChXAaNZrN7Znu4VzK475MNvsI6E7vzSTXjbp3ymk
	6O1RSahsOBhjOCPYYkAdIFU7MN/l0I/fcWoXv+Bi59xERg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eteydbrbm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 00:32:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-915757be497so572998385a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 17:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781569976; x=1782174776; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tsvYFpY1yLMjl9k9WmpsHGOTFu8DXSJDXlRw/qNDPMg=;
        b=DyBPp2kHk5ZiLUNIHdsBhyouEyAgSg9KQRPPa4LnLGc5z1Gcd/Sy7O7ZZ2GdFtfnq9
         i38aKH+gVd09Y/T1D5hdxpHJtO+d4j/WEZl0fteyJdLkkUPTj9djcMWdlcgXbq4TlMIS
         lIowFfDmbRKRinqDk+d/73jIuC/8VByRi4Cwd2nahVv38y1owFuRa5G/Qlka6/8m2900
         8F1WWVJQtG2Zj7B6GX7SlK6nBKyA6pT32SwAr7fBQMz3RbP6daTViMZ33c9Ed/FlhYHI
         mmR+5FoQjz3ulAgOBzX3+qKfyVQu4r1X/rF9NJnYZVSwM7K/LsWWVUzLFHWblUsQ6bKB
         60bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781569976; x=1782174776;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tsvYFpY1yLMjl9k9WmpsHGOTFu8DXSJDXlRw/qNDPMg=;
        b=bScEHOnh87Y90obi4o+0JtOA/B5NmEDoofXiQAPQWZN3A4rFLlO1MAwhhIr5KtqJQp
         kcX3mkk5iK9xlGYKCgy5neYUO2cJ+cGNxGM45y2sQZrFF7/l+TxIDoQtk/Ya2PVoMq5L
         AsldQeBHK1e/wtWT6sdll2H47eUsLw9I/hfZui9b+Oy87SiK9a/7I+RcrlKVhwTq/paC
         Ba1DVTZ38oi7+3iU/Ur0Xl6JuKC77nwW4YXFDqhDRAbUz9md3x7IE8dgkvhWQTIIAUMb
         QaElVQB31scSVFkX3o8POJxad2B5etvCLSy7ItUTir9m3VvvYTtaKgTjisl1aBTRI8kQ
         5+ng==
X-Forwarded-Encrypted: i=1; AFNElJ9wtgt4MEF8AQ4AAzU10jch+xyzIIdYcPnJA1ECBsVr0F8eIaIzacwj02d+IwGjWKeYAGQIH3xh28mN@vger.kernel.org
X-Gm-Message-State: AOJu0YxYFV6enYlIND2ck06e48vSq6FEWvoein75jmkEZbEdDBF1ID8k
	uy+mQJs1ArXmlRF2ZzCYiitWIl7BQLfGhcD9vmXwJ3hi4fjs0r1R19ASS6NGfYIJI+icikauJ26
	NTHqqCOMmmrSlbJZgKrM2fCA4v487bV8MBGuHOGws7Uy1b315re+zFMj3AgEu7O2N
X-Gm-Gg: Acq92OFQeEsTar/+FfguU2iWbiIYTzR1R2w1CdyBvMDPJfvaSyZ7s2uxuVe76Wbtt5k
	lzc/GQSF7beIGWz4l0eZqe2z2p6msj2b8deliDYgD1/PRDxXOiXTXCr+iqUZDExwf60sIG3/QLg
	KxlriZ8L2E3fwP0gncz89pn+D1HcCcWPREtJWYNo1Zs9pKdUPUXuwnGWSAZwM5y2dAcTZIhUzgX
	mROwP9KJT9C/LL1YKjTFC6/AVrlWwpgdLA0HLZ/fz1RkxddcBQBYNjhif2TgBrh7MbTyilOsSIz
	kUG/cPOXuwAlIemETGLX9+7o2ZFb29c7xQI9F5LjaqNo/nGfNs6YLsZVraXIViis8qrWNhXsWSB
	9NY81ieRE0hIZRkhdg6W2eIkIeVyJGlNvtZeVOaqbgbXqvuBfRrCEkXqLbCa99aWRBh8g9kpmqm
	f6994ETf3aAE7L2dYZkPourQNR3we3d+djCZA=
X-Received: by 2002:a05:620a:2406:10b0:911:1a2c:f953 with SMTP id af79cd13be357-9161bc5db30mr1804334085a.20.1781569975814;
        Mon, 15 Jun 2026 17:32:55 -0700 (PDT)
X-Received: by 2002:a05:620a:2406:10b0:911:1a2c:f953 with SMTP id af79cd13be357-9161bc5db30mr1804331885a.20.1781569975358;
        Mon, 15 Jun 2026 17:32:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3995c19aa00sm2792491fa.33.2026.06.15.17.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 17:32:53 -0700 (PDT)
Date: Tue, 16 Jun 2026 03:32:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 02/16] media: iris: Filter UBWC raw formats based on
 hardware capabilities
Message-ID: <rn33vbqw3wyc55ynpq3d25o73uabmuh2ac3tjhznma37xsoiqa@pqmlzi6t54a2>
References: <20260616-iris-ar50lt-v5-2-583b42770b6a@oss.qualcomm.com>
 <20260616001733.5FC251F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616001733.5FC251F000E9@smtp.kernel.org>
X-Proofpoint-GUID: y3qtqLSOojgY5Yv40Qp3yyx6jqox2hkD
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDAwMiBTYWx0ZWRfX5CL/ZVwjbMl8
 M9Z9I7FAmWWms2/hdIpw5MJFbkKzLwGVI2Sf6j/3Orx+UbRfK4CHqZLqaJbwwfs+xYS/jWmi9yY
 j3bgUI6qO2+V7KKwti9H9K8v584RnL0=
X-Authority-Analysis: v=2.4 cv=QrJuG1yd c=1 sm=1 tr=0 ts=6a3099b8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=xFi7dqVq-nUfgViKrN0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: y3qtqLSOojgY5Yv40Qp3yyx6jqox2hkD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDAwMiBTYWx0ZWRfX4FevQhZqezpT
 A62XQ0+WnAnjL9sgwhYr1W3zx4Z3eWRcfyEcMbnfjf7UFG8K8fo107iSSQhzsMpnBspO2iiLbFk
 zJKnlc0QxINd9vp5BJtmZKlFIaR9YnWloz8HJClrUpHRjmDUsJBY0ZgEGz5nlZzEWWLkchG6y45
 MgFXWwjTdnPwFuruO/Wt9jxUimOdCmMBlWbXuYbbmtWeJVYcl7D6NHEaepU2I76Un6fnUGoogaO
 Pa51DOzN8QscH7yoIY3jSF5bH1IAaC93oLzTFHXZC3EktjCzomA54LkdP0zkxXvKZiy/0pBm/Jq
 ++D8KZmrzXc38KgE/YzcZIke3zE5sypFcZbZWYPyCJ5rtxk/jxZM1fcEgTn0+7Xi/To1FYfu3vY
 2a3EcXd4ihNrE9hMLdc0Tldii8AxafYaHvWzoFpsJacEy4VRia7FPtUGmWO+HC8UPO61lPUB+Z+
 2VOos/O/x8e4RwM+hcQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_01,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 phishscore=0 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606160002
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312256-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9199768AF35

On Tue, Jun 16, 2026 at 12:17:32AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The `iris_vdec_formats_noubwc_cap` array contains a zero-initialized gap at index 1, which prematurely terminates V4L2 format enumeration and improperly validates 0 as a valid pixel format.

I will check later and respond or fix the issues.

> --
> 
> commit 1ff6b6e464175bc1ccf6878e0aa89ffec126608b
> Author: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

