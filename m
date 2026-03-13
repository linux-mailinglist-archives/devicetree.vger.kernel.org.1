Return-Path: <devicetree+bounces-275430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKxnMS86tGl3jAAAu9opvQ
	(envelope-from <devicetree+bounces-275430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A2A286F1A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DD15F300F5A2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8C83C5DA7;
	Fri, 13 Mar 2026 16:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DwVw2moL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="igrTUUzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191463AC0EF
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419035; cv=none; b=ioFOtPv/0SGLmv02ZKANvuX8hNKWROu07IYEHCA89hdubTPf3GCvul0PviC/g4xpeD5Ok+RAyGpBV792EcZPyR/KAid68pvQ917193atuSYS6ObV+ZfnPmh/f/NNLfQTkouxgc9RuZyLy04Zq3lvUvZZuZGWBKAvXf6NsBnwzIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419035; c=relaxed/simple;
	bh=muDlhZyro/n0dYw1NM2HBqw6mbIJO6udMqpPCjwU5C4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IRyaY3InGcMHJOzDpI+xjczkuthh/KJTLMWQjQV4//JQNyH50qd85D5Hftc7IBP2acjBrU3D0DOTWfNxQ7fFGtgkFery9Yl7fy5E+zrMNM3QBvNEHcc/mT+AzQ7iuJuSru7p2Rs/L7FtvT4Lyu/wqXTOgabfwlPSnhrsxCce0QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DwVw2moL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=igrTUUzL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA82I01749328
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:23:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Bm2VZJzabmRS6BLmEtwZ6MFH
	HA4bRNlULfqd1XMWDgs=; b=DwVw2moLdnj6dZS2klJZOp98DkCExLjHotxLhTah
	NQ/Z/MGObke0S14uQcCwHX55FJGomiR4cRLP2/hmPbqmdyaVSr/FvFXazqVhkvm4
	bB5+P+6AswMzHK7lR7Lye1t6DifXuZhndJK8+uWSO3pdoEPB66bIjIzUu//uYg4y
	4BDTeCWcrE3m61hvWy+SwMp7E/RUI/7/Di2UabCsfWHtcePXJ6PvS/Cnn4B4a5kb
	Ui3RhuY1weLYiIaRX5JN4ctzP5fzpWzrdxDCRUTPMw/gstaK0lrHwvM8aqTYlbTi
	7Blr642ZXprqyNEQ3WoIVSiANMELaGNimsDupRTnCs1Xlw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6h8g1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:23:52 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd83cfb36cso1586377485a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773419031; x=1774023831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Bm2VZJzabmRS6BLmEtwZ6MFHHA4bRNlULfqd1XMWDgs=;
        b=igrTUUzL85374xyHCjg7UaIehe7MLt9s0hIAhVbJsrnQCQgk0a4QuwLtWlgkg7e6sm
         7fWE3JGvEDA8yc9bx6AeOS36kKLepEmf6C7KTbznXrWptX+hekMT31082xd7kSYjKBX/
         PJuZ6O8JTd+cRScG4lxjttVga5lON2vekwEUwds1Ne7ImvYgWCJwx03gt3rno7+ntlCd
         ChndZtk8JzpUJyP6DlP+jVq/p/s75938omoT3MFAWGWNK4L+NtSS1vs/1ZI6ZTwtFkxg
         euWLIZFPumlxZm3D6vDj/ovVWllPkMEPi2MFZ+SqJ6GuxaNYjdAXuEJM/NcCsxyfHeu6
         cpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773419031; x=1774023831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bm2VZJzabmRS6BLmEtwZ6MFHHA4bRNlULfqd1XMWDgs=;
        b=MzEi21cN/3Lo0XgrDFmE25wSfyk5cYpJsoz4MZM99jADUIv+9EN1uYvEFC2MncRZ2F
         eNxH1JufoIF/ew5Qf937MwR7Vt6OvqZtEaBkh4nngMjYaMMVhm1rI15xvKh/WErzdrad
         6yq3OxP064RRdgVIDqCW4jos/iUYch2SuAuz5ztMZssrtKl4NTEW+lrXe68/lLX+MC2s
         z1N+c4AywlDjSBevSUWiOa/GvK/QLMyvPkSeW+At2+igqbI0RMb+RXIwa14aGHADvoUF
         4+e+vIH0eIWmI58tV9G84zqa9rK3roO6siQkIEbxrXRODklOSPwVdQMfqd8ZA3ck7HgI
         QASw==
X-Forwarded-Encrypted: i=1; AJvYcCXIDNfK44tnu9fDH8UcMS3vMjLbUIF8WsuHQlEW0793EkOMBh4R+1spU4PEBbOy2+I6ksMyoryXt6Zw@vger.kernel.org
X-Gm-Message-State: AOJu0YxTj7BLrg67UhbUupBIYJN5RUz2bnLwewTxCwM1LzPDMDiNC0mB
	cjPvXUaJXj1nEJQJikM870QbVIgZszmWdoumTfTEJyY4eU9G1VRdQhfgzqb1QIhYGVFVLSXeBmu
	9FU2tor9GNji3L33xwILmelaj8OR31C+RG4riWDvN0shkghFpYAmCRrHL+ygX5dRt
X-Gm-Gg: ATEYQzyoGsZ+v8FFz8x2AI8gOnLODtm8waU1hTJL5GWwOHV7SNBNmyQxaOHx0NRmNGt
	ZP+2rhxAXoE4+hbn/6dgj8oxAJt+LNKxfSneQw8Hv3VN7tjN36ZDKFzCGv8G8jjbkg27gjybwSc
	eqLVj7KZoNeBDxT6ARZO5z3qrPnEU3i3nb4A1ygIWkdjn3G2beMpAxU8jaMPabfIyBLjE/58B1v
	5BzbvJri1zxpUE9pZvs9oTUY3w9322E8nTA1zO5Ml2JZdodQ9QPA9dZQIEYEci8Be8idOvKrTKX
	72FOeOTFoSi/QOrEcjfgS+BqZQYRWe2B3eAaj1enPC4Am4ZcTn7catlt84avQxjC+bPaw9HLtRt
	tb1lFD0fJgLjDzvG+9orgFb9qWVWgL4NN95QQlkLR6WKVbQxrqEYKGLZaO8R4zwioE+eVvJ/rK0
	3rTWzZJCN+VTFFdSdrKwEkZw2pNMe17GctPS8=
X-Received: by 2002:a05:620a:460e:b0:8cd:923a:8798 with SMTP id af79cd13be357-8cdb5a70ff7mr523291385a.20.1773419031350;
        Fri, 13 Mar 2026 09:23:51 -0700 (PDT)
X-Received: by 2002:a05:620a:460e:b0:8cd:923a:8798 with SMTP id af79cd13be357-8cdb5a70ff7mr523285285a.20.1773419030798;
        Fri, 13 Mar 2026 09:23:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f353e1sm1574765e87.10.2026.03.13.09.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:23:49 -0700 (PDT)
Date: Fri, 13 Mar 2026 18:23:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        r.mereu@arduino.cc, m.facchin@arduino.cc, geert+renesas@glider.be,
        arnd@arndb.de, ebiggers@kernel.org, michal.simek@amd.com,
        luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/7] arm64: dts: qcom: Add Monaco Monza SoM
Message-ID: <erzhoze5gzxlrffzgaxnyt2lx2s7hicvxg2bxy4ydvo24b3g5r@hbdqospl4c2l>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260313103824.2634519-5-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313103824.2634519-5-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzMSBTYWx0ZWRfX4Csjrxq2qJCs
 Ph11dyg8Olu4Eu6HF1TtlXVfm2+ms9SeG/lCKkyhNU9urpstOrYOmbaC5GJPQNSyH3jvyTkEcVT
 TiVgNmQN7ZvoBid/ju1h0rOJ84aSAJS6YG0TFPk839DQDGk9unJeD20aSJPgzSX0YSMCmTJWH9q
 ZekBDYIdPFjFAn6g9pOVGhsIiXnTPR+ls93AJBdT6ov18zdWAU3INVKGWnUmQhkr2/4JjL/oR2B
 9KnW87GqI8MZP88Ph6CvujrwKJvFh6qg2RpZnPuPYSN9KdwdXKbZaz4gIAjLiUWZ+vAhcunZMu1
 ToB11SbMAfEqu+Qv7RHCrNVlQ6ZIDBEIzIp23ETGnYcp2rqHJ+PS7aLwMsKyPtmWANp1ogueha+
 HcfAuJjme0ygod3Etuwx5VNiyu1k9FK1v6jx6XF8EKDrGRoVw9jo9B8Y5YZ/tFmjctcwAlvqJf3
 /6fTDWcyIwwgQkRwPpQ==
X-Proofpoint-GUID: rZ6U9_GLyjNW8upX9FMPzzRSim5QZYov
X-Proofpoint-ORIG-GUID: rZ6U9_GLyjNW8upX9FMPzzRSim5QZYov
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b43a18 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=PhgHo22kut4TJJxNvVMA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130131
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275430-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arduino.cc,glider.be,arndb.de,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A7A2A286F1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 10:38:19AM +0000, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> The Monaco Monza SoM is a compact computing module that integrates a
> Monaco/QCS8300 System on Chip (SoC), along with essential components
> optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> The following components are described:
> - Fixed S2S 1.8V rail
> - PMM8654AU RPMh regulators (PMIC A and PMIC C)
> - Display subsystem/phy supplies (DSI, DP)
> - Enable GPU, GPI DMA, IRIS
> - PCIe Gen4 for both controllers and PHY supply hookups
> - QUPv3 firmware declarations
> - REFGEN always-on workaround for USB2 HS PHY
> - Remoteproc firmware names for ADSP, CDSP and GPDSP
> - Ethernet SERDES supplies
> - USB HS/SS PHY regulators
> - On-SoM eMMC
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  .../arm64/boot/dts/qcom/monaco-monza-som.dtsi | 323 ++++++++++++++++++
>  1 file changed, 323 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

